package com.android.internal.protolog;

import android.util.Slog;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.GZIPInputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ProtoLogViewerConfigReader {
    private Map<Integer, String> mLogMessageMap = null;

    public static void logAndPrintln(PrintWriter printWriter, String str) {
        Slog.i("ProtoLogViewerConfigReader", str);
        if (printWriter != null) {
            printWriter.println(str);
            printWriter.flush();
        }
    }

    public synchronized void loadViewerConfig(PrintWriter printWriter, String str) {
        try {
            try {
                try {
                    loadViewerConfig(new GZIPInputStream(new FileInputStream(str)));
                    logAndPrintln(printWriter, "Loaded " + this.mLogMessageMap.size() + " log definitions from " + str);
                } catch (IOException e) {
                    logAndPrintln(printWriter, "Unable to load log definitions: IOException while reading " + str + ". " + e);
                }
            } catch (FileNotFoundException e2) {
                logAndPrintln(printWriter, "Unable to load log definitions: File " + str + " not found." + e2);
            }
        } catch (JSONException e3) {
            logAndPrintln(printWriter, "Unable to load log definitions: JSON parsing exception while reading " + str + ". " + e3);
        }
    }

    public synchronized void loadViewerConfig(InputStream inputStream) {
        if (this.mLogMessageMap != null) {
            return;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            sb.append(readLine);
            sb.append('\n');
        }
        bufferedReader.close();
        JSONObject jSONObject = new JSONObject(sb.toString()).getJSONObject("messages");
        this.mLogMessageMap = new TreeMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                int parseInt = Integer.parseInt(next);
                this.mLogMessageMap.put(Integer.valueOf(parseInt), jSONObject.getJSONObject(next).getString("message"));
            } catch (NumberFormatException unused) {
            }
        }
    }
}
