package com.sec.internal.helper.picturetool;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class UnsupportedContext implements IContentTypeContext {
    private static final String LOG_TAG = "UnsupportedContext";

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public Bitmap.CompressFormat getDestinationFormat() {
        throw new RuntimeException("BAD ACCESS");
    }

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public void validateExtension() throws IOException {
        Log.d(LOG_TAG, "unsupported image format");
        throw new IOException();
    }

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public File getFinalFilePath(File file, String str) throws IOException {
        throw new RuntimeException("BAD ACCESS");
    }

    public String toString() {
        return UnsupportedContext.class.getSimpleName();
    }

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public void processSpecificData(File file, File file2) throws IOException {
        throw new RuntimeException("BAD ACCESS");
    }
}
