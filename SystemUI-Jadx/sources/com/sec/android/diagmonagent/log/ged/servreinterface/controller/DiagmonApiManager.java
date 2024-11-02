package com.sec.android.diagmonagent.log.ged.servreinterface.controller;

import android.content.Context;
import com.sec.android.diagmonagent.common.logger.AppLog;
import com.sec.android.diagmonagent.log.ged.db.GEDDatabase;
import com.sec.android.diagmonagent.log.ged.db.dao.ResultDao;
import com.sec.android.diagmonagent.log.ged.db.model.Event;
import com.sec.android.diagmonagent.log.ged.db.model.Result;
import com.sec.android.diagmonagent.log.ged.servreinterface.model.client.DiagmonClient;
import com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response;
import com.sec.android.diagmonagent.log.ged.util.RestUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DiagmonApiManager {
    public static volatile DiagmonApiManager sInstance;

    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d6 A[Catch: IOException -> 0x01d2, TryCatch #5 {IOException -> 0x01d2, blocks: (B:82:0x01ce, B:71:0x01d6, B:73:0x01db, B:75:0x01e0, B:76:0x01e3), top: B:81:0x01ce }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01db A[Catch: IOException -> 0x01d2, TryCatch #5 {IOException -> 0x01d2, blocks: (B:82:0x01ce, B:71:0x01d6, B:73:0x01db, B:75:0x01e0, B:76:0x01e3), top: B:81:0x01ce }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e0 A[Catch: IOException -> 0x01d2, TryCatch #5 {IOException -> 0x01d2, blocks: (B:82:0x01ce, B:71:0x01d6, B:73:0x01db, B:75:0x01e0, B:76:0x01e3), top: B:81:0x01ce }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0289 A[Catch: IOException -> 0x029f, TryCatch #14 {IOException -> 0x029f, blocks: (B:91:0x0284, B:93:0x0289, B:95:0x028e, B:97:0x0293, B:99:0x0298, B:100:0x029b), top: B:90:0x0284 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x028e A[Catch: IOException -> 0x029f, TryCatch #14 {IOException -> 0x029f, blocks: (B:91:0x0284, B:93:0x0289, B:95:0x028e, B:97:0x0293, B:99:0x0298, B:100:0x029b), top: B:90:0x0284 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0293 A[Catch: IOException -> 0x029f, TryCatch #14 {IOException -> 0x029f, blocks: (B:91:0x0284, B:93:0x0289, B:95:0x028e, B:97:0x0293, B:99:0x0298, B:100:0x029b), top: B:90:0x0284 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0298 A[Catch: IOException -> 0x029f, TryCatch #14 {IOException -> 0x029f, blocks: (B:91:0x0284, B:93:0x0289, B:95:0x028e, B:97:0x0293, B:99:0x0298, B:100:0x029b), top: B:90:0x0284 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void eventReport(android.content.Context r17, com.sec.android.diagmonagent.log.ged.db.model.Event r18, int r19) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.servreinterface.controller.DiagmonApiManager.eventReport(android.content.Context, com.sec.android.diagmonagent.log.ged.db.model.Event, int):void");
    }

    public static DiagmonApiManager getInstance() {
        if (sInstance == null) {
            synchronized (DiagmonApiManager.class) {
                if (sInstance == null) {
                    sInstance = new DiagmonApiManager();
                }
            }
        }
        return sInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f5 A[Catch: JSONException -> 0x01fb, TryCatch #0 {JSONException -> 0x01fb, blocks: (B:12:0x0087, B:13:0x009f, B:16:0x00ac, B:31:0x00fb, B:32:0x00e7, B:34:0x00ee, B:36:0x00f5, B:38:0x00c5, B:41:0x00cd, B:44:0x00d5, B:48:0x00fe, B:49:0x0105, B:51:0x010b, B:53:0x011b, B:54:0x0122, B:56:0x0128, B:58:0x0136, B:72:0x017c, B:74:0x0182, B:79:0x0189, B:81:0x0190, B:82:0x0196, B:84:0x019c, B:85:0x01a2, B:87:0x01a8, B:90:0x01af, B:92:0x01b8, B:93:0x01be, B:95:0x01c4, B:96:0x01ca, B:98:0x01d0, B:101:0x014e, B:104:0x0156, B:107:0x0161), top: B:11:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01af A[Catch: JSONException -> 0x01fb, TryCatch #0 {JSONException -> 0x01fb, blocks: (B:12:0x0087, B:13:0x009f, B:16:0x00ac, B:31:0x00fb, B:32:0x00e7, B:34:0x00ee, B:36:0x00f5, B:38:0x00c5, B:41:0x00cd, B:44:0x00d5, B:48:0x00fe, B:49:0x0105, B:51:0x010b, B:53:0x011b, B:54:0x0122, B:56:0x0128, B:58:0x0136, B:72:0x017c, B:74:0x0182, B:79:0x0189, B:81:0x0190, B:82:0x0196, B:84:0x019c, B:85:0x01a2, B:87:0x01a8, B:90:0x01af, B:92:0x01b8, B:93:0x01be, B:95:0x01c4, B:96:0x01ca, B:98:0x01d0, B:101:0x014e, B:104:0x0156, B:107:0x0161), top: B:11:0x0087 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void refreshPolicy(android.content.Context r19, java.lang.String r20, int r21) {
        /*
            Method dump skipped, instructions count: 655
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.servreinterface.controller.DiagmonApiManager.refreshPolicy(android.content.Context, java.lang.String, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0082, code lost:
    
        if (r2 != 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ae, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ac, code lost:
    
        if (r2 != 0) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00f4: MOVE (r4 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]) (LINE:245), block:B:58:0x00f4 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void refreshToken(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.servreinterface.controller.DiagmonApiManager.refreshToken(android.content.Context):void");
    }

    public static void resultReport(Context context, Result result, int i) {
        JSONObject jSONObject;
        String str = RestUtils.DEVICE_KEY;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("eventId", result.eventId);
            jSONObject2.put("clientStatusCode", result.clientStatusCode);
            jSONObject = new JSONObject().put("resultInfo", jSONObject2);
        } catch (JSONException unused) {
            AppLog.e("JSONException occurred making result object");
            jSONObject = null;
        }
        Response execute = new DiagmonClient(context, "/v2/eventreport/result", "POST", result.serviceId, jSONObject).execute();
        if (execute != null) {
            if (execute.code == 200) {
                AppLog.i("succeed to connect to report result");
                AppLog.d(execute.body);
                GEDDatabase.get(context).getResultDao().db.delete("Result", "id=?", new String[]{String.valueOf(result.id)});
                return;
            }
            if (RestUtils.isTokenNeedToBeUpdated(context, execute)) {
                refreshToken(context);
                AppLog.i("Retry result report");
                if (i < 3) {
                    resultReport(context, result, i + 1);
                    return;
                }
                return;
            }
            AppLog.w("Failed to connect to report result : " + execute.code);
        }
    }

    public static void resultReportAfterLogUpload(Context context, Event event, int i) {
        JSONObject jSONObject;
        String str = RestUtils.DEVICE_KEY;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("eventId", event.eventId);
            jSONObject2.put("clientStatusCode", event.status);
            jSONObject = new JSONObject().put("resultInfo", jSONObject2);
        } catch (JSONException unused) {
            AppLog.e("JSONException occurred making result object");
            jSONObject = null;
        }
        Response execute = new DiagmonClient(context, "/v2/eventreport/result", "POST", event.serviceId, jSONObject).execute();
        if (execute != null) {
            if (execute.code == 200) {
                AppLog.i("succeed to connect to report result after log upload");
                AppLog.d(execute.body);
                return;
            }
            if (RestUtils.isTokenNeedToBeUpdated(context, execute)) {
                refreshToken(context);
                AppLog.i("Retry result report after log upload");
                if (i < 3) {
                    resultReportAfterLogUpload(context, event, i + 1);
                    return;
                }
                return;
            }
            GEDDatabase.get(context).getResultDao().insert(ResultDao.makeResult(event));
            AppLog.w("failed to connect to report result after log upload: " + execute.code);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c6, code lost:
    
        r12 = r13.getJSONObject(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ce, code lost:
    
        if (r12.has("documentId") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d0, code lost:
    
        r9.documentId = r12.getString("documentId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00da, code lost:
    
        if (r12.has("id") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00dc, code lost:
    
        r12.getString("id");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e3, code lost:
    
        if (r12.has("statusCode") == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00e5, code lost:
    
        r9.statusCode = r12.getString("statusCode");
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ef, code lost:
    
        if (r12.has("errorCode") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f1, code lost:
    
        r9.errorCode = r12.getString("errorCode");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fb, code lost:
    
        if (r12.has("errorMessage") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fd, code lost:
    
        r9.errorMessage = r12.getString("errorMessage");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void serviceRegister(android.content.Context r11, com.sec.android.diagmonagent.log.ged.db.model.ServiceInfo r12, int r13) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.servreinterface.controller.DiagmonApiManager.serviceRegister(android.content.Context, com.sec.android.diagmonagent.log.ged.db.model.ServiceInfo, int):void");
    }
}
