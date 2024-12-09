package com.sec.internal.ims.config.adapters;

import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpAdapterJibeAndSec extends HttpAdapter {
    protected static final String LOG_TAG = "HttpAdapterJibeAndSec";

    public HttpAdapterJibeAndSec(int i) {
        super(i);
        this.mState = new IdleState();
    }

    protected class IdleState extends HttpAdapter.IdleState {
        protected IdleState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.IdleState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean open(String str) {
            if (!HttpAdapterJibeAndSec.this.configureUrlConnection(str)) {
                return false;
            }
            HttpAdapterJibeAndSec httpAdapterJibeAndSec = HttpAdapterJibeAndSec.this;
            httpAdapterJibeAndSec.mState = httpAdapterJibeAndSec.new ReadyState();
            return true;
        }
    }

    protected class ReadyState extends HttpAdapter.ReadyState {
        protected ReadyState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public IHttpAdapter.Response request() {
            HttpAdapterJibeAndSec.this.tryToConnectHttpUrlConnection();
            String stringBuffer = HttpAdapterJibeAndSec.this.mUrl.toString();
            HttpAdapterJibeAndSec httpAdapterJibeAndSec = HttpAdapterJibeAndSec.this;
            int resStatusCode = httpAdapterJibeAndSec.getResStatusCode(httpAdapterJibeAndSec.mHttpURLConn);
            HttpAdapterJibeAndSec httpAdapterJibeAndSec2 = HttpAdapterJibeAndSec.this;
            String resStatusMessage = httpAdapterJibeAndSec2.getResStatusMessage(httpAdapterJibeAndSec2.mHttpURLConn);
            HttpAdapterJibeAndSec httpAdapterJibeAndSec3 = HttpAdapterJibeAndSec.this;
            Map<String, List<String>> resHeader = httpAdapterJibeAndSec3.getResHeader(httpAdapterJibeAndSec3.mHttpURLConn);
            HttpAdapterJibeAndSec httpAdapterJibeAndSec4 = HttpAdapterJibeAndSec.this;
            return new IHttpAdapter.Response(stringBuffer, resStatusCode, resStatusMessage, resHeader, httpAdapterJibeAndSec4.getResBody(httpAdapterJibeAndSec4.mHttpURLConn));
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean close() {
            HttpAdapterJibeAndSec.this.mHttpURLConn.disconnect();
            HttpAdapterJibeAndSec httpAdapterJibeAndSec = HttpAdapterJibeAndSec.this;
            httpAdapterJibeAndSec.mState = httpAdapterJibeAndSec.new IdleState();
            return true;
        }
    }
}
