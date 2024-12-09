package com.sec.internal.helper;

import android.net.Network;
import android.util.Log;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.util.ImsUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.tls.OkHostnameVerifier;

/* loaded from: classes.dex */
public class HttpRequest {
    public static final String BOUNDARY = "00content0boundary00";
    public static final String CHARSET_UTF8 = "UTF-8";
    private static ConnectionFactory CONNECTION_FACTORY = ConnectionFactory.DEFAULT;
    private static final String CONTENT_TYPE_MULTIPART = "multipart/form-data; boundary=00content0boundary00";
    private static final String CRLF = "\r\n";
    public static final String ENCODING_GZIP = "gzip";
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String HEADER_AUTHENTICATION_INFO = "Authentication-Info";
    public static final String HEADER_AUTHORIZATION = "Authorization";
    public static final String HEADER_CONTENT_ENCODING = "Content-Encoding";
    public static final String HEADER_CONTENT_LENGTH = "Content-Length";
    public static final String HEADER_CONTENT_RANGE = "Content-Range";
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final String HEADER_DATE = "Date";
    public static final String HEADER_LOCATION = "Location";
    public static final String HEADER_RANGE = "Range";
    public static final String HEADER_RETRY_AFTER = "Retry-After";
    public static final String HEADER_SUPPORTED_VERSIONS = "Supported-Versions";
    public static final String HEADER_TRANSFER_ENCODING = "Transfer-Encoding";
    public static final String HEADER_USER_AGENT = "User-Agent";
    public static final String HEADER_WWW_AUTHENTICATE = "WWW-Authenticate";
    public static final String METHOD_GET = "GET";
    public static final String METHOD_POST = "POST";
    public static final String METHOD_PUT = "PUT";
    public static final String PARAM_CHARSET = "charset";
    private static SSLSocketFactory TRUSTED_FACTORY;
    private static HostnameVerifier TRUSTED_VERIFIER;
    private String httpProxyHost;
    private int httpProxyPort;
    private boolean multipart;
    private Network network;
    private RequestOutputStream output;
    private final String requestMethod;
    private final URL url;
    private HttpURLConnection connection = null;
    private boolean ignoreCloseExceptions = true;
    private boolean uncompress = false;
    private int bufferSize = 8192;
    private long totalSize = -1;
    private long totalWritten = 0;
    private UploadProgress progress = UploadProgress.DEFAULT;

    public interface ConnectionFactory {
        public static final ConnectionFactory DEFAULT = new ConnectionFactory() { // from class: com.sec.internal.helper.HttpRequest.ConnectionFactory.1
            @Override // com.sec.internal.helper.HttpRequest.ConnectionFactory
            public HttpURLConnection create(URL url, Network network) throws IOException {
                if (network != null) {
                    return (HttpURLConnection) network.openConnection(url);
                }
                return (HttpURLConnection) url.openConnection();
            }

            @Override // com.sec.internal.helper.HttpRequest.ConnectionFactory
            public HttpURLConnection create(URL url, Proxy proxy, Network network) throws IOException {
                if (network != null) {
                    return (HttpURLConnection) network.openConnection(url, proxy);
                }
                return (HttpURLConnection) url.openConnection(proxy);
            }
        };

        HttpURLConnection create(URL url, Network network) throws IOException;

        HttpURLConnection create(URL url, Proxy proxy, Network network) throws IOException;
    }

    public interface UploadProgress {
        public static final UploadProgress DEFAULT = new UploadProgress() { // from class: com.sec.internal.helper.HttpRequest.UploadProgress.1
            @Override // com.sec.internal.helper.HttpRequest.UploadProgress
            public boolean isCancelled() {
                return false;
            }

            @Override // com.sec.internal.helper.HttpRequest.UploadProgress
            public void onUpload(long j, long j2) {
            }
        };

        boolean isCancelled();

        void onUpload(long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$trustAllHosts$0(String str, SSLSession sSLSession) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getValidCharset(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    private static SSLSocketFactory getTrustedFactory() throws HttpRequestException {
        SSLSocketFactory sSLSocketFactory;
        synchronized (HttpRequest.class) {
            if (TRUSTED_FACTORY == null) {
                TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.sec.internal.helper.HttpRequest.1
                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }
                }};
                try {
                    SSLContext sSLContext = SSLContext.getInstance("TLS");
                    sSLContext.init(null, trustManagerArr, ImsUtil.getRandom());
                    TRUSTED_FACTORY = sSLContext.getSocketFactory();
                } catch (GeneralSecurityException e) {
                    IOException iOException = new IOException("Security exception configuring SSL context");
                    iOException.initCause(e);
                    throw new HttpRequestException(iOException);
                }
            }
            sSLSocketFactory = TRUSTED_FACTORY;
        }
        return sSLSocketFactory;
    }

    private static HostnameVerifier getTrustedVerifier() {
        HostnameVerifier hostnameVerifier;
        synchronized (HttpRequest.class) {
            if (TRUSTED_VERIFIER == null) {
                TRUSTED_VERIFIER = new HostnameVerifier() { // from class: com.sec.internal.helper.HttpRequest.2
                    @Override // javax.net.ssl.HostnameVerifier
                    public boolean verify(String str, SSLSession sSLSession) {
                        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
                        boolean z = false;
                        try {
                            boolean z2 = false;
                            for (Certificate certificate : sSLSession.getPeerCertificates()) {
                                try {
                                    z2 = okHostnameVerifier.verify(str, (X509Certificate) certificate);
                                    if (z2) {
                                        return z2;
                                    }
                                } catch (SSLException unused) {
                                    z = z2;
                                    Log.e("HttpRequest", "SSL Exception with HostNameVerify Fail");
                                    return z;
                                }
                            }
                            return z2;
                        } catch (SSLException unused2) {
                        }
                    }
                };
            }
            hostnameVerifier = TRUSTED_VERIFIER;
        }
        return hostnameVerifier;
    }

    public static class HttpRequestException extends RuntimeException {
        private static final long serialVersionUID = -1170466989781746231L;

        public HttpRequestException(IOException iOException) {
            super(iOException);
        }

        @Override // java.lang.Throwable
        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    protected static abstract class Operation<V> implements Callable<V> {
        protected abstract void done() throws IOException;

        protected abstract V run() throws HttpRequestException, IOException;

        protected Operation() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        public V call() throws HttpRequestException {
            V v;
            V v2 = (V) (true ? 1 : 0);
            try {
                try {
                    try {
                        v2 = run();
                        try {
                            done();
                            return v2;
                        } catch (IOException e) {
                            throw new HttpRequestException(e);
                        }
                    } catch (IOException e2) {
                        throw new HttpRequestException(e2);
                    } catch (Throwable th) {
                        th = th;
                        v = null;
                        try {
                            done();
                            throw th;
                        } catch (IOException e3) {
                            if (v == null) {
                                throw new HttpRequestException(e3);
                            }
                            throw th;
                        }
                    }
                } catch (HttpRequestException e4) {
                    throw e4;
                }
            } catch (Throwable th2) {
                v = v2;
                th = th2;
                done();
                throw th;
            }
        }
    }

    protected static abstract class CloseOperation<V> extends Operation<V> {
        private final Closeable closeable;
        FileOutputStream fileOutputStream;
        private final boolean ignoreCloseExceptions;

        protected CloseOperation(Closeable closeable, boolean z, FileOutputStream fileOutputStream) {
            this.closeable = closeable;
            this.ignoreCloseExceptions = z;
            this.fileOutputStream = fileOutputStream;
        }

        @Override // com.sec.internal.helper.HttpRequest.Operation
        protected void done() throws IOException {
            Closeable closeable = this.closeable;
            if (closeable instanceof Flushable) {
                ((Flushable) closeable).flush();
            }
            if (this.ignoreCloseExceptions) {
                try {
                    this.closeable.close();
                    FileOutputStream fileOutputStream = this.fileOutputStream;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                        return;
                    }
                    return;
                } catch (IOException unused) {
                    return;
                }
            }
            this.closeable.close();
            FileOutputStream fileOutputStream2 = this.fileOutputStream;
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        }
    }

    public static class RequestOutputStream extends BufferedOutputStream {
        private final CharsetEncoder encoder;

        public RequestOutputStream(OutputStream outputStream, String str, int i) {
            super(outputStream, i);
            this.encoder = Charset.forName(HttpRequest.getValidCharset(str)).newEncoder();
        }

        public RequestOutputStream write(String str) throws IOException {
            ByteBuffer encode = this.encoder.encode(CharBuffer.wrap(str));
            super.write(encode.array(), 0, encode.limit());
            return this;
        }
    }

    public static HttpRequest get(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "GET");
    }

    public static HttpRequest post(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "POST");
    }

    public static HttpRequest put(CharSequence charSequence) throws HttpRequestException {
        return new HttpRequest(charSequence, "PUT");
    }

    public static HttpRequest put(URL url) throws HttpRequestException {
        return new HttpRequest(url, "PUT");
    }

    public HttpRequest(CharSequence charSequence, String str) throws HttpRequestException {
        try {
            this.url = new URL(charSequence.toString());
            this.requestMethod = str;
        } catch (MalformedURLException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest(URL url, String str) throws HttpRequestException {
        this.url = url;
        this.requestMethod = str;
    }

    private Proxy createProxy() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.httpProxyHost, this.httpProxyPort));
    }

    private HttpURLConnection createConnection() {
        HttpURLConnection create;
        try {
            if (this.httpProxyHost != null) {
                create = CONNECTION_FACTORY.create(this.url, createProxy(), this.network);
            } else {
                create = CONNECTION_FACTORY.create(this.url, this.network);
            }
            create.setRequestMethod(this.requestMethod);
            if (create instanceof HttpsURLConnection) {
                ((HttpsURLConnection) create).setHostnameVerifier(getTrustedVerifier());
            }
            return create;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String toString() {
        return method() + ' ' + url();
    }

    public HttpURLConnection getConnection() {
        if (this.connection == null) {
            this.connection = createConnection();
        }
        return this.connection;
    }

    public int code() throws HttpRequestException {
        try {
            closeOutput();
            return getConnection().getResponseCode();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String getCipherSuite() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null && (httpURLConnection instanceof HttpsURLConnection)) {
            try {
                return ((HttpsURLConnection) httpURLConnection).getCipherSuite();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean ok() throws HttpRequestException {
        return 200 == code();
    }

    public String message() throws HttpRequestException {
        try {
            closeOutput();
            return getConnection().getResponseMessage();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest disconnect() {
        getConnection().disconnect();
        return this;
    }

    public HttpRequest chunk(int i) {
        getConnection().setChunkedStreamingMode(i);
        return this;
    }

    public HttpRequest bufferSize(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("Size must be greater than zero");
        }
        this.bufferSize = i;
        return this;
    }

    protected ByteArrayOutputStream byteStream() {
        int contentLength = contentLength();
        if (contentLength > 0) {
            return new ByteArrayOutputStream(contentLength);
        }
        return new ByteArrayOutputStream();
    }

    public String body(String str) throws HttpRequestException {
        ByteArrayOutputStream byteStream = byteStream();
        try {
            copy(buffer(), byteStream);
            return byteStream.toString(getValidCharset(str));
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public String body() throws HttpRequestException {
        return body(charset());
    }

    public BufferedInputStream buffer() throws HttpRequestException {
        return new BufferedInputStream(stream(), this.bufferSize);
    }

    public InputStream stream() throws HttpRequestException {
        InputStream inputStream;
        if (code() < 400) {
            try {
                inputStream = getConnection().getInputStream();
            } catch (IOException e) {
                throw new HttpRequestException(e);
            }
        } else {
            inputStream = getConnection().getErrorStream();
            if (inputStream == null) {
                try {
                    inputStream = getConnection().getInputStream();
                } catch (IOException e2) {
                    if (contentLength() > 0) {
                        throw new HttpRequestException(e2);
                    }
                    inputStream = new ByteArrayInputStream(new byte[0]);
                }
            }
        }
        if (!this.uncompress || !"gzip".equals(contentEncoding())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e3) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    throw new HttpRequestException(e4);
                }
            }
            throw new HttpRequestException(e3);
        }
    }

    public HttpRequest receive(OutputStream outputStream) throws HttpRequestException {
        try {
            return copy(buffer(), outputStream);
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest readTimeout(int i) {
        getConnection().setReadTimeout(i);
        return this;
    }

    public HttpRequest connectTimeout(int i) {
        getConnection().setConnectTimeout(i);
        return this;
    }

    public HttpRequest header(String str, String str2) {
        getConnection().setRequestProperty(str, str2);
        return this;
    }

    public String header(String str) throws HttpRequestException {
        closeOutputQuietly();
        return getConnection().getHeaderField(str);
    }

    public int intHeader(String str) throws HttpRequestException {
        return intHeader(str, -1);
    }

    public int intHeader(String str, int i) throws HttpRequestException {
        closeOutputQuietly();
        return getConnection().getHeaderFieldInt(str, i);
    }

    public String parameter(String str, String str2) {
        return getParam(header(str), str2);
    }

    protected String getParam(String str, String str2) {
        String trim;
        int length;
        if (str != null && str.length() != 0) {
            int length2 = str.length();
            int indexOf = str.indexOf(59) + 1;
            if (indexOf != 0 && indexOf != length2) {
                int indexOf2 = str.indexOf(59, indexOf);
                if (indexOf2 == -1) {
                    indexOf2 = length2;
                }
                while (indexOf < indexOf2) {
                    int indexOf3 = str.indexOf(61, indexOf);
                    if (indexOf3 != -1 && indexOf3 < indexOf2 && str2.equals(str.substring(indexOf, indexOf3).trim()) && (length = (trim = str.substring(indexOf3 + 1, indexOf2).trim()).length()) != 0) {
                        if (length > 2 && '\"' == trim.charAt(0)) {
                            int i = length - 1;
                            if ('\"' == trim.charAt(i)) {
                                return trim.substring(1, i);
                            }
                        }
                        return trim;
                    }
                    indexOf = indexOf2 + 1;
                    indexOf2 = str.indexOf(59, indexOf);
                    if (indexOf2 == -1) {
                        indexOf2 = length2;
                    }
                }
            }
        }
        return null;
    }

    public String charset() {
        return parameter("Content-Type", "charset");
    }

    public HttpRequest userAgent(String str) {
        return header("User-Agent", str);
    }

    public HttpRequest useCaches(boolean z) {
        getConnection().setUseCaches(z);
        return this;
    }

    public HttpRequest acceptEncoding(String str) {
        return header("Accept-Encoding", str);
    }

    public String contentEncoding() {
        return header("Content-Encoding");
    }

    public HttpRequest authorization(String str) {
        return header("Authorization", str);
    }

    public HttpRequest contentType(String str) {
        return contentType(str, null);
    }

    public HttpRequest contentType(String str, String str2) {
        if (str2 != null && str2.length() > 0) {
            return header("Content-Type", str + "; charset=" + str2);
        }
        return header("Content-Type", str);
    }

    public int contentLength() {
        return intHeader("Content-Length");
    }

    public HttpRequest contentLength(String str) {
        return contentLength(Integer.parseInt(str));
    }

    public HttpRequest contentLength(int i) {
        getConnection().setFixedLengthStreamingMode(i);
        return this;
    }

    public String wwwAuthenticate() {
        return header("WWW-Authenticate");
    }

    public HttpRequest range(long j, long j2) {
        if (j >= 0) {
            if (j2 < 0) {
                return header("Range", String.format("bytes=%s-", Long.valueOf(j)));
            }
            return header("Range", String.format("bytes=%s-%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        throw new IllegalArgumentException("Cannot have negative start: " + j);
    }

    public HttpRequest contentRange(long j, long j2, long j3) {
        if (j < 0 || j2 < 0 || j > j2) {
            throw new IllegalArgumentException("Invalid argument: " + j + "," + j2);
        }
        return header("Content-Range", String.format("bytes %s-%s/%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
    }

    protected HttpRequest copy(final InputStream inputStream, final OutputStream outputStream) throws IOException {
        return new CloseOperation<HttpRequest>(inputStream, this.ignoreCloseExceptions, null) { // from class: com.sec.internal.helper.HttpRequest.3
            @Override // com.sec.internal.helper.HttpRequest.Operation
            public HttpRequest run() throws IOException {
                byte[] bArr = new byte[HttpRequest.this.bufferSize];
                do {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    outputStream.flush();
                    HttpRequest.this.totalWritten += read;
                    HttpRequest.this.progress.onUpload(HttpRequest.this.totalWritten, HttpRequest.this.totalSize);
                } while (!HttpRequest.this.progress.isCancelled());
                return HttpRequest.this;
            }
        }.call();
    }

    public HttpRequest progress(UploadProgress uploadProgress) {
        if (uploadProgress == null) {
            this.progress = UploadProgress.DEFAULT;
        } else {
            this.progress = uploadProgress;
        }
        this.totalWritten = 0L;
        return this;
    }

    private HttpRequest incrementTotalSize(long j) {
        if (this.totalSize == -1) {
            this.totalSize = 0L;
        }
        this.totalSize += j;
        return this;
    }

    protected HttpRequest closeOutput() throws IOException {
        RequestOutputStream requestOutputStream = this.output;
        if (requestOutputStream == null) {
            return this;
        }
        if (this.multipart) {
            requestOutputStream.write("\r\n--00content0boundary00--\r\n");
        }
        if (this.ignoreCloseExceptions) {
            try {
                this.output.close();
            } catch (IOException unused) {
            }
        } else {
            this.output.close();
        }
        this.output = null;
        return this;
    }

    protected HttpRequest closeOutputQuietly() throws HttpRequestException {
        try {
            return closeOutput();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    protected HttpRequest openOutput() throws IOException {
        if (this.output != null) {
            return this;
        }
        getConnection().setDoOutput(true);
        this.output = new RequestOutputStream(getConnection().getOutputStream(), getParam(getConnection().getRequestProperty("Content-Type"), "charset"), this.bufferSize);
        return this;
    }

    protected HttpRequest startPart() throws IOException {
        if (!this.multipart) {
            this.multipart = true;
            contentType(CONTENT_TYPE_MULTIPART).openOutput();
            this.output.write("--00content0boundary00\r\n");
        } else {
            this.output.write("\r\n--00content0boundary00\r\n");
        }
        return this;
    }

    protected HttpRequest writePartHeader(String str, String str2, String str3) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"");
        sb.append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"");
            sb.append(str2);
        }
        sb.append('\"');
        partHeader(HttpController.HEADER_CONTENT_DISPOSITION, sb.toString());
        if (str3 != null) {
            partHeader("Content-Type", str3);
        }
        return send(CRLF);
    }

    public HttpRequest part(String str, String str2, String str3, String str4) throws HttpRequestException {
        try {
            startPart();
            writePartHeader(str, str2, str3);
            this.output.write(str4);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest part(String str, String str2, String str3, File file) throws HttpRequestException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                try {
                    incrementTotalSize(file.length());
                    part(str, str2, str3, bufferedInputStream);
                    bufferedInputStream.close();
                    fileInputStream.close();
                    return this;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest part(String str, String str2, String str3, InputStream inputStream) throws HttpRequestException {
        try {
            startPart();
            writePartHeader(str, str2, str3);
            copy(inputStream, this.output);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest partHeader(String str, String str2) throws HttpRequestException {
        return send(str).send(": ").send(str2).send(CRLF);
    }

    public HttpRequest send(InputStream inputStream) throws HttpRequestException {
        try {
            openOutput();
            copy(inputStream, this.output);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest send(CharSequence charSequence) throws HttpRequestException {
        try {
            openOutput();
            this.output.write(charSequence.toString());
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    public HttpRequest trustAllCerts() throws HttpRequestException {
        HttpURLConnection connection = getConnection();
        if (connection instanceof HttpsURLConnection) {
            ((HttpsURLConnection) connection).setSSLSocketFactory(getTrustedFactory());
        }
        return this;
    }

    public HttpRequest trustAllHosts() {
        HttpURLConnection connection = getConnection();
        HostnameVerifier hostnameVerifier = new HostnameVerifier() { // from class: com.sec.internal.helper.HttpRequest$$ExternalSyntheticLambda0
            @Override // javax.net.ssl.HostnameVerifier
            public final boolean verify(String str, SSLSession sSLSession) {
                boolean lambda$trustAllHosts$0;
                lambda$trustAllHosts$0 = HttpRequest.lambda$trustAllHosts$0(str, sSLSession);
                return lambda$trustAllHosts$0;
            }
        };
        if (connection instanceof HttpsURLConnection) {
            Log.d("HttpRequest", "trustAllHosts() - this connections is instance of HttpsURLConnection ");
            ((HttpsURLConnection) connection).setHostnameVerifier(hostnameVerifier);
        }
        return this;
    }

    public URL url() {
        return getConnection().getURL();
    }

    public String method() {
        return getConnection().getRequestMethod();
    }

    public HttpRequest useNetwork(Network network) {
        this.network = network;
        return this;
    }

    public long getPartHeaderLength(String str, String str2, String str3, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("--00content0boundary00\r\n");
        } else {
            sb.append("\r\n--00content0boundary00\r\n");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("form-data; name=\"");
        sb2.append(str);
        if (str2 != null) {
            sb2.append("\"; filename=\"");
            sb2.append(str2);
        }
        sb2.append('\"');
        sb.append("Content-Disposition: " + sb2.toString() + CRLF);
        if (str3 != null) {
            sb.append("Content-Type: " + str3 + CRLF);
        }
        sb.append(CRLF);
        Log.d("HttpRequest", "The length of header: " + sb.length());
        return sb.length();
    }

    public HttpRequest setFollowRedirect(boolean z) {
        getConnection().setInstanceFollowRedirects(z);
        return this;
    }

    public HttpRequest setParams(Network network, boolean z, int i, int i2, String str) {
        return useNetwork(network).useCaches(z).connectTimeout(i).readTimeout(i2).userAgent(str).setFollowRedirect(false);
    }
}
