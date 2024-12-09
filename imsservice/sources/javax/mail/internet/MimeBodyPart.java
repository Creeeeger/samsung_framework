package javax.mail.internet;

import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.LineOutputStream;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import javax.activation.DataHandler;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.internet.HeaderTokenizer;

/* loaded from: classes.dex */
public class MimeBodyPart extends BodyPart implements MimePart {
    static boolean cacheMultipart = true;
    private static boolean decodeFileName = false;
    private static boolean encodeFileName = false;
    private static boolean setContentTypeFileName = true;
    private static boolean setDefaultTextCharset = true;
    protected byte[] content;
    protected InputStream contentStream;
    protected DataHandler dh;
    protected InternetHeaders headers;

    static {
        try {
            String property = System.getProperty("mail.mime.setdefaulttextcharset");
            boolean z = false;
            setDefaultTextCharset = property == null || !property.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED);
            String property2 = System.getProperty("mail.mime.setcontenttypefilename");
            setContentTypeFileName = property2 == null || !property2.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED);
            String property3 = System.getProperty("mail.mime.encodefilename");
            encodeFileName = (property3 == null || property3.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED)) ? false : true;
            String property4 = System.getProperty("mail.mime.decodefilename");
            decodeFileName = (property4 == null || property4.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED)) ? false : true;
            String property5 = System.getProperty("mail.mime.cachemultipart");
            if (property5 == null || !property5.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED)) {
                z = true;
            }
            cacheMultipart = z;
        } catch (SecurityException unused) {
        }
    }

    public MimeBodyPart() {
        this.headers = new InternetHeaders();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MimeBodyPart(InputStream inputStream) throws MessagingException {
        boolean z = inputStream instanceof ByteArrayInputStream;
        InputStream inputStream2 = inputStream;
        if (!z) {
            boolean z2 = inputStream instanceof BufferedInputStream;
            inputStream2 = inputStream;
            if (!z2) {
                boolean z3 = inputStream instanceof SharedInputStream;
                inputStream2 = inputStream;
                if (!z3) {
                    inputStream2 = new BufferedInputStream(inputStream);
                }
            }
        }
        this.headers = new InternetHeaders(inputStream2);
        if (inputStream2 instanceof SharedInputStream) {
            SharedInputStream sharedInputStream = (SharedInputStream) inputStream2;
            this.contentStream = sharedInputStream.newStream(sharedInputStream.getPosition(), -1L);
        } else {
            try {
                this.content = ASCIIUtility.getBytes(inputStream2);
            } catch (IOException e) {
                throw new MessagingException("Error reading input stream", e);
            }
        }
    }

    public MimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        this.headers = internetHeaders;
        this.content = bArr;
    }

    @Override // javax.mail.Part
    public int getSize() throws MessagingException {
        byte[] bArr = this.content;
        if (bArr != null) {
            return bArr.length;
        }
        InputStream inputStream = this.contentStream;
        if (inputStream == null) {
            return -1;
        }
        try {
            int available = inputStream.available();
            if (available > 0) {
                return available;
            }
            return -1;
        } catch (IOException unused) {
            return -1;
        }
    }

    @Override // javax.mail.Part
    public String getContentType() throws MessagingException {
        String header = getHeader("Content-Type", null);
        return header == null ? MIMEContentType.PLAIN_TEXT : header;
    }

    @Override // javax.mail.internet.MimePart
    public String getEncoding() throws MessagingException {
        return getEncoding(this);
    }

    @Override // javax.mail.Part
    public InputStream getInputStream() throws IOException, MessagingException {
        return getDataHandler().getInputStream();
    }

    protected InputStream getContentStream() throws MessagingException {
        Closeable closeable = this.contentStream;
        if (closeable != null) {
            return ((SharedInputStream) closeable).newStream(0L, -1L);
        }
        if (this.content != null) {
            return new ByteArrayInputStream(this.content);
        }
        throw new MessagingException("No content");
    }

    @Override // javax.mail.Part
    public DataHandler getDataHandler() throws MessagingException {
        if (this.dh == null) {
            this.dh = new DataHandler(new MimePartDataSource(this));
        }
        return this.dh;
    }

    public void writeTo(OutputStream outputStream) throws IOException, MessagingException {
        writeTo(this, outputStream, null);
    }

    @Override // javax.mail.Part
    public String[] getHeader(String str) throws MessagingException {
        return this.headers.getHeader(str);
    }

    @Override // javax.mail.internet.MimePart
    public String getHeader(String str, String str2) throws MessagingException {
        return this.headers.getHeader(str, str2);
    }

    @Override // javax.mail.internet.MimePart
    public Enumeration getNonMatchingHeaderLines(String[] strArr) throws MessagingException {
        return this.headers.getNonMatchingHeaderLines(strArr);
    }

    static String getEncoding(MimePart mimePart) throws MessagingException {
        HeaderTokenizer.Token next;
        int type;
        String header = mimePart.getHeader(HttpController.HEADER_CONTENT_TRANSFER_ENCODING, null);
        if (header == null) {
            return null;
        }
        String trim = header.trim();
        if (trim.equalsIgnoreCase("7bit") || trim.equalsIgnoreCase("8bit") || trim.equalsIgnoreCase("quoted-printable") || trim.equalsIgnoreCase(HttpPostBody.CONTENT_TRANSFER_ENCODING_BINARY) || trim.equalsIgnoreCase(HttpPostBody.CONTENT_TRANSFER_ENCODING_BASE64)) {
            return trim;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(trim, "()<>@,;:\\\"\t []/?=");
        do {
            next = headerTokenizer.next();
            type = next.getType();
            if (type == -4) {
                return trim;
            }
        } while (type != -1);
        return next.getValue();
    }

    static void writeTo(MimePart mimePart, OutputStream outputStream, String[] strArr) throws IOException, MessagingException {
        LineOutputStream lineOutputStream;
        if (outputStream instanceof LineOutputStream) {
            lineOutputStream = (LineOutputStream) outputStream;
        } else {
            lineOutputStream = new LineOutputStream(outputStream);
        }
        Enumeration nonMatchingHeaderLines = mimePart.getNonMatchingHeaderLines(strArr);
        while (nonMatchingHeaderLines.hasMoreElements()) {
            lineOutputStream.writeln((String) nonMatchingHeaderLines.nextElement());
        }
        lineOutputStream.writeln();
        OutputStream encode = MimeUtility.encode(outputStream, mimePart.getEncoding());
        mimePart.getDataHandler().writeTo(encode);
        encode.flush();
    }
}
