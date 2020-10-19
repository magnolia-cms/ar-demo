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
    background-color: #fff;
  }
  </style>

  <h1>AR Demo!</h1>

  [#if content.ARmodel?has_content]

    [#assign ARmodel = cmsfn.contentById(content.ARmodel, "3d-models")]
    [#assign image = (ARmodel.image??)?then(damfn.getAssetLink(ARmodel.image),'')]
    [#assign glb = (ARmodel.glb??)?then(damfn.getAssetLink(ARmodel.glb),'')]
    [#assign usdz = (ARmodel.usdz??)?then(damfn.getAssetLink(ARmodel.usdz),'')]

  <h2>${ARmodel.jcrName}</h2>
  
  <model-viewer 
    [#if glb?has_content] src="${glb}" [/#if]
    [#if usdz?has_content] ios-src="${usdz}" [/#if]
    [#if image?has_content] poster="${image}" [/#if] 

    alt="${ARmodel.jcrName}"
    ar ar-modes="webxr scene-viewer quick-look" ar-scale="auto"
    quick-look-browsers="safari chrome"
    auto-rotate camera-controls
    shadow-intensity="1" 
>
</model-viewer>

 [/#if] 

</div>
