package androidx.picker.helper;

import androidx.picker.loader.AppIconFlow;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.BuildersKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class FlowHelperKt {
    public static final void loadIconSync(AppIconFlow appIconFlow) {
        BuildersKt.runBlocking(EmptyCoroutineContext.INSTANCE, new FlowHelperKt$loadIconSync$1(appIconFlow, null));
    }
}
