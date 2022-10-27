public class CreatePdfController {
	@AuraEnabled 
        public static String getPdfFileAsBase64String() {
            PageReference pdfPage = Page.pdfTemplate;
            Blob pdfBlob = pdfPage.getContent();
            String base64Pdf = EncodingUtil.base64Encode(pdfBlob);
            return base64Pdf;
        }
}