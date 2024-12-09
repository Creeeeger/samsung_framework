package com.sec.internal.helper.picturetool;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class PngContext extends SupportedContextAdapter {
    private static final String LOG_TAG = "PngContext";

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public Bitmap.CompressFormat getDestinationFormat() {
        return Bitmap.CompressFormat.PNG;
    }

    public String toString() {
        return PngContext.class.getSimpleName();
    }

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public void processSpecificData(File file, File file2) throws IOException {
        Log.d(LOG_TAG, "processSpecificData: Exit");
    }
}
