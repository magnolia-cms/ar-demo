<div class="augmentedReality">

  <!-- REQUIRED: Web Components polyfill to support Edge and Firefox < 63 -->
  <script src="https://unpkg.com/@webcomponents/webcomponentsjs@2.1.3/webcomponents-loader.js"></script>
  <!-- Import the component -->
  <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.js"></script>
  <script nomodule src="https://unpkg.com/@google/model-viewer/dist/model-viewer-legacy.js"></script>
 
  <style>
  model-viewer {
    width: 100%;
    height: 400px;
    background-color: #70BCD1;
  }
  </style>


  [#if content.ARmodel?has_content]
    <div>${content.ARmodel}</div>
    [#assign ARmodel = cmsfn.contentById(content.ARmodel, "3d-models")]

  [/#if] 


  <model-viewer src="https://cdn.glitch.com/ea8aad0f-c4ad-4fee-b2aa-0174986b2895%2Fchair.glb?v=1569230891112"
              ios-src="https://github.com/Giorat/dope-chair-model-viewer/raw/master/model/chair.usdz"
              poster="img"
              alt="Chair"
              shadow-intensity="1"
              camera-controls
              ar-modes="webxr scene-viewer quick-look" ar-scale="auto"
              quick-look-browsers="safari chrome"
              auto-rotate 
              ar 
>
</model-viewer>

[#--  
  [#if content.title?has_content]
    <h2>${content.title!}</h2>
  [/#if]

  [#if content.image?has_content]
    [#assign image = damfn.getAsset(content.image)]
    [#assign imageLink = image.link]
    <img
      src='${imageLink!}'
      class='img-responsive'
      alt='${content.caption!"image"}'>
  [/#if]

  [#if content.desc?has_content]
    ${cmsfn.decode(content).desc!}
  [/#if]

  [#if content.internalLink?has_content]
    [#assign target = cmsfn.contentById(content.internalLink, "website")!]
    <a href='${ctx.contextPath}/${cmsfn.link(target)!}' class='btn btn-link'>${target.title!target.@name}</a>
  [/#if]

  [#if content.categories?has_content && content.categories?size > 0]
    [#list content.categories as item]
      [#assign category = cmsfn.contentById(item, "category")!]
      <span class="label label-default">${category.name!category.@name!}</span>
    [/#list]
  [/#if]

  [#if content.option?has_content]
    <div>${content.option!}</div>
  [/#if]  --]


</div>
