package com.sec.internal.ims.config.workflow;

import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class WorkflowCookieHandler {
    private static final String LOG_TAG = "WorkflowCookieHandler";
    protected final CookieManager mCookieManager;
    protected int mPhoneId;
    protected WorkflowBase mWorkflowBase;

    public WorkflowCookieHandler(WorkflowBase workflowBase, int i) {
        CookieManager cookieManager = new CookieManager();
        this.mCookieManager = cookieManager;
        this.mWorkflowBase = workflowBase;
        this.mPhoneId = i;
        CookieHandler.setDefault(cookieManager);
    }

    protected URI getUri() {
        try {
            return new URI(this.mWorkflowBase.mSharedInfo.getUrl());
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return null;
        }
    }

    protected List<HttpCookie> getCookie(URI uri) {
        return this.mCookieManager.getCookieStore().get(uri);
    }

    protected void displayCookieInfo(HttpCookie httpCookie) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "cookie name:" + httpCookie.getName());
        IMSLog.i(str, this.mPhoneId, "cookie value:" + httpCookie.getValue());
        IMSLog.i(str, this.mPhoneId, "cookie domain:" + httpCookie.getDomain());
        IMSLog.i(str, this.mPhoneId, "cookie path:" + httpCookie.getPath());
        IMSLog.i(str, this.mPhoneId, "cookie max age:" + httpCookie.getMaxAge());
    }

    protected boolean isCookie(IHttpAdapter.Response response) {
        if (response.getHeader().containsKey(HttpController.HEADER_SET_COOKIE)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "cookie exist");
            Iterator<HttpCookie> it = getCookie(getUri()).iterator();
            while (it.hasNext()) {
                displayCookieInfo(it.next());
            }
            return true;
        }
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "cookie does not exist");
        IMSLog.c(LogClass.WFB_NO_COOKIE, this.mWorkflowBase.mPhoneId + ",NOC");
        this.mWorkflowBase.addEventLog(str + ": cookie does not exist");
        return false;
    }

    protected void clearCookie() {
        URI uri = getUri();
        for (HttpCookie httpCookie : getCookie(uri)) {
            this.mCookieManager.getCookieStore().remove(uri, httpCookie);
            displayRemovedCookieInfo(httpCookie.getName());
        }
    }

    protected void displayRemovedCookieInfo(String str) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "removed cookie: " + str);
    }

    protected void handleCookie(IHttpAdapter.Response response) {
        if (response == null || !response.getHeader().containsKey(HttpController.HEADER_SET_COOKIE)) {
            return;
        }
        Mno mno = SimUtil.getMno();
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleCookie: cookie exists, adding in header");
        if (ConfigUtil.isRcsChn(mno)) {
            ArrayList arrayList = new ArrayList();
            List<String> list = this.mWorkflowBase.mSharedInfo.getHttpResponse().getHeader().get(HttpController.HEADER_SET_COOKIE);
            IMSLog.i(str, this.mPhoneId, "handleCookie: cookie = " + list);
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String[] split = it.next().split(";");
                StringBuilder sb = new StringBuilder();
                for (String str2 : split) {
                    if (!str2.startsWith("Max-Age")) {
                        if (sb.length() == 0) {
                            sb.append(str2);
                        } else {
                            sb.append(";" + str2);
                        }
                    }
                }
                arrayList.add(sb.toString());
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "handleCookie: remove Max-Age = " + arrayList);
            this.mWorkflowBase.mSharedInfo.addHttpHeader(HttpController.HEADER_COOKIE, arrayList);
            return;
        }
        if (ConfigUtil.shallUsePreviousCookie(response.getStatusCode(), mno)) {
            return;
        }
        List<String> list2 = response.getHeader().get(HttpController.HEADER_SET_COOKIE);
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it2 = list2.iterator();
        while (it2.hasNext()) {
            for (String str3 : it2.next().split(";")) {
                String trim = str3.trim();
                if (sb2.length() != 0) {
                    sb2.append("; ");
                }
                sb2.append(trim);
            }
        }
        if (sb2.length() != 0) {
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(sb2.toString());
            this.mWorkflowBase.mSharedInfo.addHttpHeader(HttpController.HEADER_COOKIE, arrayList2);
        }
    }
}
