package com.sec.android.diagmonagent.common.logger;

import android.content.Context;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.FileHandler;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AppLogData {
    public FileHandler mFileHandler;
    public Logger mLogger;
    public String mMessagePrefix;
    public final Date mDate = new Date();
    public final SimpleDateFormat mFormatter = new SimpleDateFormat("MM/dd HH:mm:ss.SSS", Locale.getDefault());

    public AppLogData(Context context) {
        Logger logger = Logger.getLogger("DIAGMON_SDK");
        this.mLogger = logger;
        logger.setLevel(Level.ALL);
        this.mLogger.setUseParentHandlers(false);
        File file = new File(String.valueOf(context.getDir("log", 0)));
        if (file.exists() || file.mkdir()) {
            try {
                FileHandler fileHandler = new FileHandler(file.getPath() + File.separator + "DIAGMON_SDK.log", 300000, 1, true);
                this.mFileHandler = fileHandler;
                fileHandler.setFormatter(new Formatter(this) { // from class: com.sec.android.diagmonagent.common.logger.AppLogData.1
                    @Override // java.util.logging.Formatter
                    public final String format(LogRecord logRecord) {
                        return logRecord.getMessage() + "\n";
                    }
                });
                this.mLogger.addHandler(this.mFileHandler);
            } catch (IOException e) {
                Log.e("DIAGMON_SDK", e.getLocalizedMessage());
            }
        }
    }

    public final void makeAdditionalData(String str) {
        this.mMessagePrefix = PathParser$$ExternalSyntheticOutline0.m("[605033][", str, "] ");
    }

    public final void printToFile(String str, String str2) {
        if (this.mLogger != null) {
            Date date = this.mDate;
            date.setTime(System.currentTimeMillis());
            Logger logger = this.mLogger;
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, " ");
            m.append(this.mFormatter.format(date));
            m.append(":");
            m.append(str2);
            logger.info(m.toString());
        }
    }
}
