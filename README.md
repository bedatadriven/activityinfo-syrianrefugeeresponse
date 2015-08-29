
Custom branding for syrianrefugeeresponse.org

There are two key files that live on the ActivityInfo.org application 
server:

  - Scaffolding.ftl: A FreeMarker template that is used as the basis for all
    FreeMarker-rendered pages (everything expect the main GWT app)
    
  - HomePageBody.html: Static HTML that is served for the root.
  
  
The rest are static files and must be hosted somewhere else (with HTTPS support).
We are currently stroring them on a Google Cloud Storage (GCS) bucket, but it could be 
anywhere. 

Cross-Origin Headers
====================

FireFox applies the same-origin security policy to webfonts, so in order for 
the humanitarian webfont to be served from the static content host, the static
content host must serve the fonts with the Allow-Origin header. 

For GCS, the policy is defined in cors.xml and can be set using:

    gsutil setcors cors.xml gs://activityinfo-syrianrefugeeresponse


