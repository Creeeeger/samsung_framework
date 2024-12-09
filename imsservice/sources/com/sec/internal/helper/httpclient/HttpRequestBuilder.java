package com.sec.internal.helper.httpclient;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpRequestBuilder {
    private static final String TAG = "HttpRequestBuilder";

    public static Request buildRequest(HttpRequestParams httpRequestParams) {
        Request.Builder url;
        HttpQueryParams queryParams = httpRequestParams.getQueryParams();
        HttpUrl parse = HttpUrl.parse(httpRequestParams.getUrl());
        try {
            if (queryParams != null && parse != null) {
                HttpUrl.Builder newBuilder = parse.newBuilder();
                LinkedHashMap<String, String> params = queryParams.getParams();
                if (queryParams.isEncoded()) {
                    for (Map.Entry<String, String> entry : params.entrySet()) {
                        newBuilder.addEncodedQueryParameter(entry.getKey(), entry.getValue());
                    }
                } else {
                    for (Map.Entry<String, String> entry2 : params.entrySet()) {
                        newBuilder.addQueryParameter(entry2.getKey(), entry2.getValue());
                    }
                }
                url = new Request.Builder().url(newBuilder.build());
            } else {
                url = new Request.Builder().url(httpRequestParams.getUrl());
            }
            buildRequestHeader(httpRequestParams, url);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[httpRequestParams.getMethod().ordinal()];
            if (i == 1) {
                return url.build();
            }
            if (i == 2) {
                return buildDeleteRequest(httpRequestParams, url);
            }
            if (i == 3 || i == 4) {
                return buildPostOrPutRequest(httpRequestParams, url);
            }
            if (i != 5) {
                return null;
            }
            url.head();
            return url.build();
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "URL is wrong");
            return null;
        }
    }

    /* renamed from: com.sec.internal.helper.httpclient.HttpRequestBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method;

        static {
            int[] iArr = new int[HttpRequestParams.Method.values().length];
            $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method = iArr;
            try {
                iArr[HttpRequestParams.Method.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[HttpRequestParams.Method.DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[HttpRequestParams.Method.POST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[HttpRequestParams.Method.PUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[HttpRequestParams.Method.HEAD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private static void buildRequestHeader(HttpRequestParams httpRequestParams, Request.Builder builder) {
        Map<String, String> headers = httpRequestParams.getHeaders();
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                    builder.header(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    private static Request buildDeleteRequest(HttpRequestParams httpRequestParams, Request.Builder builder) {
        if (httpRequestParams.getPostBody() == null) {
            Log.d(TAG, "buildDeleteRequest: delete all");
            builder.delete();
            return builder.build();
        }
        builder.delete(buildRequestBody(httpRequestParams));
        return builder.build();
    }

    private static Request buildPostOrPutRequest(HttpRequestParams httpRequestParams, Request.Builder builder) {
        RequestBody buildRequestBody;
        String str;
        String contentType = getContentType(httpRequestParams);
        String str2 = TAG;
        Log.d(str2, "buildPostOrPutRequest: " + contentType);
        if (httpRequestParams.getPostBody() == null) {
            builder.method(httpRequestParams.getMethod().name(), RequestBody.create("", MediaType.parse(contentType)));
        } else if (isContentMatching(contentType, HttpPostBody.CONTENT_TYPE_MULTIPART)) {
            int indexOf = contentType.indexOf("boundary=");
            int i = indexOf + 9;
            if (indexOf != -1) {
                str = contentType.substring(i).trim();
                Log.d(str2, "boundary:" + str);
            } else {
                str = null;
            }
            MultipartBody.Builder builder2 = new MultipartBody.Builder();
            if (str != null) {
                builder2 = new MultipartBody.Builder(str);
            }
            if (setMultipartType(builder2, contentType)) {
                buildMultipart(builder2, httpRequestParams.getPostBody().getMultiparts());
                builder.method(httpRequestParams.getMethod().name(), builder2.build());
            }
        } else if (isContentMatching(contentType, "application/x-www-form-urlencoded")) {
            if (httpRequestParams.getPostBody().getJSONBody() != null) {
                buildRequestBody = buildFormEncodingBody(httpRequestParams);
            } else {
                buildRequestBody = buildRequestBody(httpRequestParams);
            }
            builder.method(httpRequestParams.getMethod().name(), buildRequestBody);
        } else {
            MediaType parse = MediaType.parse(contentType);
            if (httpRequestParams.getPostBody().getFile() != null) {
                builder.method(httpRequestParams.getMethod().name(), RequestBody.create(httpRequestParams.getPostBody().getFile(), parse));
            } else if (httpRequestParams.getPostBody().getBody() != null) {
                builder.method(httpRequestParams.getMethod().name(), buildRequestBody(httpRequestParams));
            } else {
                builder.method(httpRequestParams.getMethod().name(), RequestBody.create(httpRequestParams.getPostBody().getData(), parse));
            }
        }
        return builder.build();
    }

    private static RequestBody buildFormEncodingBody(HttpRequestParams httpRequestParams) {
        String str;
        JSONException e;
        FormBody.Builder builder = new FormBody.Builder();
        JSONObject jSONBody = httpRequestParams.getPostBody().getJSONBody();
        Iterator<String> keys = jSONBody.keys();
        String str2 = null;
        while (keys.hasNext()) {
            try {
                str = keys.next();
            } catch (JSONException e2) {
                str = str2;
                e = e2;
            }
            try {
                builder.add(str, jSONBody.getString(str));
            } catch (JSONException e3) {
                e = e3;
                Log.e(TAG, "buildFormEncodingBody: failed to load value " + str);
                e.printStackTrace();
                str2 = str;
            }
            str2 = str;
        }
        return builder.build();
    }

    private static void buildMultipart(MultipartBody.Builder builder, List<HttpPostBody> list) {
        if (list == null || list.size() <= 0) {
            Log.e(TAG, "buildMultipart: list is empty");
            return;
        }
        for (HttpPostBody httpPostBody : list) {
            Headers.Builder builder2 = new Headers.Builder();
            if (httpPostBody.getMultiparts() != null && httpPostBody.getMultiparts().size() > 0) {
                MultipartBody.Builder builder3 = new MultipartBody.Builder();
                if (setMultipartType(builder3, httpPostBody.getContentType())) {
                    buildMultipart(builder3, httpPostBody.getMultiparts());
                    builder2.addUnsafeNonAscii(HttpController.HEADER_CONTENT_DISPOSITION, httpPostBody.getContentDisposition());
                    builder.addPart(builder2.build(), builder3.build());
                }
            } else {
                HashMap hashMap = new HashMap();
                hashMap.put(HttpController.HEADER_CONTENT_DISPOSITION, httpPostBody.getContentDisposition());
                if (!TextUtils.isEmpty(httpPostBody.getContentTransferEncoding())) {
                    hashMap.put(HttpController.HEADER_CONTENT_TRANSFER_ENCODING, httpPostBody.getContentTransferEncoding());
                }
                if (!TextUtils.isEmpty(httpPostBody.getFileIcon())) {
                    hashMap.put(HttpController.HEADER_FILE_ICON, httpPostBody.getFileIcon());
                }
                if (!TextUtils.isEmpty(httpPostBody.getContentId())) {
                    hashMap.put(HttpController.HEADER_CONTENT_ID, httpPostBody.getContentId());
                }
                for (Map.Entry entry : hashMap.entrySet()) {
                    if (entry.getKey() == HttpController.HEADER_CONTENT_DISPOSITION || entry.getKey() == HttpController.HEADER_CONTENT_ID) {
                        builder2.addUnsafeNonAscii((String) entry.getKey(), (String) entry.getValue());
                    } else {
                        builder2.add((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                Headers build = builder2.build();
                if (httpPostBody.getFile() != null) {
                    builder.addPart(build, RequestBody.create(httpPostBody.getFile(), MediaType.parse(httpPostBody.getContentType())));
                } else if (httpPostBody.getBody() != null) {
                    builder.addPart(build, RequestBody.create(httpPostBody.getBody(), MediaType.parse(httpPostBody.getContentType())));
                } else if (httpPostBody.getData() != null) {
                    builder.addPart(build, RequestBody.create(httpPostBody.getData(), MediaType.parse(httpPostBody.getContentType())));
                } else {
                    Log.e(TAG, "buildMultipart: body, file and data are null.");
                }
            }
        }
    }

    private static RequestBody buildRequestBody(HttpRequestParams httpRequestParams) {
        RequestBody create;
        MediaType parse = MediaType.parse(getContentType(httpRequestParams));
        String body = httpRequestParams.getPostBody().getBody();
        byte[] data = httpRequestParams.getPostBody().getData();
        if (!isGzipSupported(httpRequestParams)) {
            if (data != null) {
                return RequestBody.create(data, parse);
            }
            if (body != null) {
                return RequestBody.create(body, parse);
            }
            Log.e(TAG, "buildRequestBody: body compression failed");
            return null;
        }
        try {
            if (data != null) {
                create = RequestBody.create(GzipCompressionUtil.compress(data), parse);
            } else if (body != null) {
                create = RequestBody.create(GzipCompressionUtil.compress(body), parse);
            } else {
                Log.e(TAG, "buildRequestBody: body construction failed");
                return null;
            }
            return create;
        } catch (IOException unused) {
            Log.e(TAG, "buildRequestBody: body compression failed");
            return null;
        }
    }

    private static boolean setMultipartType(MultipartBody.Builder builder, String str) {
        if (str.contains(HttpPostBody.CONTENT_TYPE_MULTIPART_FORMDATA)) {
            builder.setType(MultipartBody.FORM);
        } else if (str.contains("multipart/mixed")) {
            builder.setType(MultipartBody.MIXED);
        } else {
            Log.e(TAG, "setMultipartType: wrong content-type, should be multipart.");
            return false;
        }
        return true;
    }

    private static String getContentType(HttpRequestParams httpRequestParams) {
        String str = httpRequestParams.getHeaders().get("Content-Type");
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        Log.d(TAG, "getContentType: no content type, set to default");
        return HttpPostBody.CONTENT_TYPE_DEFAULT;
    }

    private static String getContentEncoding(HttpRequestParams httpRequestParams) {
        String str = httpRequestParams.getHeaders().get("Content-Encoding");
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        Log.d(TAG, "getContentEncoding: no content encoding, set to null");
        return null;
    }

    private static boolean isContentMatching(String str, String str2) {
        return Pattern.compile(Pattern.quote(str2), 2).matcher(str).find();
    }

    private static boolean isGzipSupported(HttpRequestParams httpRequestParams) {
        String contentEncoding = getContentEncoding(httpRequestParams);
        return contentEncoding != null && contentEncoding.equalsIgnoreCase("gzip");
    }
}
