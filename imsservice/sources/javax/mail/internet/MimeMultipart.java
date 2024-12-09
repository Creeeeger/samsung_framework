package javax.mail.internet;

import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.LineOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.mail.BodyPart;
import javax.mail.MessageAware;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.MultipartDataSource;

/* loaded from: classes.dex */
public class MimeMultipart extends Multipart {
    private static boolean bmparse = true;
    private static boolean ignoreMissingBoundaryParameter = true;
    private static boolean ignoreMissingEndBoundary = true;
    private boolean complete;
    protected DataSource ds;
    protected boolean parsed;
    private String preamble;

    static {
        try {
            String property = System.getProperty("mail.mime.multipart.ignoremissingendboundary");
            boolean z = false;
            ignoreMissingEndBoundary = property == null || !property.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED);
            String property2 = System.getProperty("mail.mime.multipart.ignoremissingboundaryparameter");
            ignoreMissingBoundaryParameter = property2 == null || !property2.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED);
            String property3 = System.getProperty("mail.mime.multipart.bmparse");
            if (property3 == null || !property3.equalsIgnoreCase(ConfigConstants.VALUE.INFO_COMPLETED)) {
                z = true;
            }
            bmparse = z;
        } catch (SecurityException unused) {
        }
    }

    public MimeMultipart() {
        this("mixed");
    }

    public MimeMultipart(String str) {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        String uniqueBoundaryValue = UniqueValue.getUniqueBoundaryValue();
        ContentType contentType = new ContentType("multipart", str, null);
        contentType.setParameter("boundary", uniqueBoundaryValue);
        this.contentType = contentType.toString();
    }

    public MimeMultipart(DataSource dataSource) throws MessagingException {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        if (dataSource instanceof MessageAware) {
            setParent(((MessageAware) dataSource).getMessageContext().getPart());
        }
        if (dataSource instanceof MultipartDataSource) {
            setMultipartDataSource((MultipartDataSource) dataSource);
            return;
        }
        this.parsed = false;
        this.ds = dataSource;
        this.contentType = dataSource.getContentType();
    }

    @Override // javax.mail.Multipart
    public synchronized int getCount() throws MessagingException {
        parse();
        return super.getCount();
    }

    @Override // javax.mail.Multipart
    public synchronized BodyPart getBodyPart(int i) throws MessagingException {
        parse();
        return super.getBodyPart(i);
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart) throws MessagingException {
        parse();
        super.addBodyPart(bodyPart);
    }

    public synchronized void writeTo(OutputStream outputStream) throws IOException, MessagingException {
        parse();
        String str = "--" + new ContentType(this.contentType).getParameter("boundary");
        LineOutputStream lineOutputStream = new LineOutputStream(outputStream);
        String str2 = this.preamble;
        if (str2 != null) {
            byte[] bytes = ASCIIUtility.getBytes(str2);
            lineOutputStream.write(bytes);
            if (bytes.length > 0 && bytes[bytes.length - 1] != 13 && bytes[bytes.length - 1] != 10) {
                lineOutputStream.writeln();
            }
        }
        for (int i = 0; i < this.parts.size(); i++) {
            lineOutputStream.writeln(str);
            ((MimeBodyPart) this.parts.elementAt(i)).writeTo(outputStream);
            lineOutputStream.writeln();
        }
        lineOutputStream.writeln(String.valueOf(str) + "--");
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x0140, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x017f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x005e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected synchronized void parse() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 596
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeMultipart.parse():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x0177, code lost:
    
        r12 = r7;
        r28 = r8;
        r17 = (r0.getPosition() - r6) - r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0190 A[Catch: all -> 0x032d, IOException -> 0x032f, TryCatch #2 {IOException -> 0x032f, blocks: (B:24:0x004e, B:25:0x0055, B:56:0x0092, B:57:0x0098, B:61:0x00a4, B:77:0x00a9, B:80:0x00b8, B:81:0x00bc, B:83:0x00c2, B:205:0x00ca, B:207:0x00ce, B:215:0x00d7, B:216:0x00de, B:88:0x00eb, B:91:0x00f3, B:92:0x0100, B:93:0x0107, B:192:0x0114, B:195:0x011a, B:196:0x011e, B:149:0x01c7, B:151:0x01f9, B:152:0x01d6, B:154:0x01de, B:155:0x01e7, B:158:0x01ed, B:159:0x01f1, B:198:0x012d, B:199:0x0134, B:104:0x014a, B:112:0x015c, B:120:0x0226, B:125:0x023d, B:126:0x0243, B:128:0x024e, B:131:0x025b, B:136:0x0267, B:137:0x026d, B:141:0x0177, B:142:0x0188, B:144:0x0190, B:147:0x019a, B:174:0x01b6, B:177:0x01c0, B:181:0x0214, B:97:0x013c, B:99:0x0286, B:200:0x00fb, B:202:0x0293, B:203:0x029a, B:219:0x00e3, B:63:0x029b, B:69:0x02be, B:72:0x02aa, B:65:0x02af, B:67:0x02b7, B:59:0x02cf, B:222:0x02e8, B:223:0x02ef, B:27:0x0062, B:33:0x0072, B:35:0x007a, B:38:0x02f0, B:47:0x02f8, B:42:0x0306, B:43:0x0312, B:224:0x0085, B:29:0x006a), top: B:23:0x004e, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x01b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0318 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v5, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void parsebm() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 848
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeMultipart.parsebm():void");
    }

    private static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (i2 > 0) {
            int read = inputStream.read(bArr, i, i2);
            if (read <= 0) {
                break;
            }
            i += read;
            i3 += read;
            i2 -= read;
        }
        if (i3 > 0) {
            return i3;
        }
        return -1;
    }

    private void skipFully(InputStream inputStream, long j) throws IOException {
        while (j > 0) {
            long skip = inputStream.skip(j);
            if (skip <= 0) {
                throw new EOFException("can't skip");
            }
            j -= skip;
        }
    }

    protected InternetHeaders createInternetHeaders(InputStream inputStream) throws MessagingException {
        return new InternetHeaders(inputStream);
    }

    protected MimeBodyPart createMimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) throws MessagingException {
        return new MimeBodyPart(internetHeaders, bArr);
    }

    protected MimeBodyPart createMimeBodyPart(InputStream inputStream) throws MessagingException {
        return new MimeBodyPart(inputStream);
    }
}
