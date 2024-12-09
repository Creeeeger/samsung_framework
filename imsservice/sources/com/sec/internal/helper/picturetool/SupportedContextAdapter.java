package com.sec.internal.helper.picturetool;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SupportedContextAdapter implements IContentTypeContext {
    private static final String LOG_TAG = "SupportedContextAdapter";

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public File getFinalFilePath(File file, String str) throws NullPointerException, IOException {
        return UniqueFilePathResolver.getUniqueFile(str, file);
    }

    @Override // com.sec.internal.helper.picturetool.IContentTypeContext
    public void validateExtension() throws IOException {
        Log.v(LOG_TAG, "validateExtension:: Exit");
    }
}
