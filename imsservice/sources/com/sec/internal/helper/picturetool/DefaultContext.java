package com.sec.internal.helper.picturetool;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class DefaultContext extends JpgContext {
    private static final String LOG_TAG = "DefaultContext";

    public DefaultContext(ExifProcessor exifProcessor) {
        super(exifProcessor);
    }

    @Override // com.sec.internal.helper.picturetool.SupportedContextAdapter, com.sec.internal.helper.picturetool.IContentTypeContext
    public File getFinalFilePath(File file, String str) throws IOException {
        return super.getFinalFilePath(file, changeExtToJpg(str));
    }

    @Override // com.sec.internal.helper.picturetool.JpgContext
    public String toString() {
        return DefaultContext.class.getSimpleName();
    }

    private String changeExtToJpg(String str) {
        return str.substring(0, str.lastIndexOf(".")) + ".jpg";
    }

    @Override // com.sec.internal.helper.picturetool.JpgContext, com.sec.internal.helper.picturetool.IContentTypeContext
    public void processSpecificData(File file, File file2) throws IOException {
        Log.d(LOG_TAG, "processSpecificData: Exit");
    }
}
