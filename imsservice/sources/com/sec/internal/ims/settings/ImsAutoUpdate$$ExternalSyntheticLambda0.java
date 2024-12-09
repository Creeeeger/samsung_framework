package com.sec.internal.ims.settings;

import android.os.storage.StorageManager;
import java.util.function.Function;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class ImsAutoUpdate$$ExternalSyntheticLambda0 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((StorageManager) obj).getPrimaryStorageVolume();
    }
}
