package javax.mail.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.activation.DataSource;

/* loaded from: classes.dex */
public class ByteArrayDataSource implements DataSource {
    private byte[] data;
    private int len;
    private String name;
    private String type;

    static class DSByteArrayOutputStream extends ByteArrayOutputStream {
        DSByteArrayOutputStream() {
        }

        public byte[] getBuf() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public int getCount() {
            return ((ByteArrayOutputStream) this).count;
        }
    }

    public ByteArrayDataSource(InputStream inputStream, String str) throws IOException {
        this.len = -1;
        this.name = "";
        DSByteArrayOutputStream dSByteArrayOutputStream = new DSByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                break;
            } else {
                dSByteArrayOutputStream.write(bArr, 0, read);
            }
        }
        this.data = dSByteArrayOutputStream.getBuf();
        int count = dSByteArrayOutputStream.getCount();
        this.len = count;
        if (this.data.length - count > 262144) {
            byte[] byteArray = dSByteArrayOutputStream.toByteArray();
            this.data = byteArray;
            this.len = byteArray.length;
        }
        this.type = str;
    }

    public ByteArrayDataSource(byte[] bArr, String str) {
        this.len = -1;
        this.name = "";
        this.data = bArr;
        this.type = str;
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        byte[] bArr = this.data;
        if (bArr == null) {
            throw new IOException("no data");
        }
        if (this.len < 0) {
            this.len = bArr.length;
        }
        return new SharedByteArrayInputStream(this.data, 0, this.len);
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        return this.type;
    }
}
