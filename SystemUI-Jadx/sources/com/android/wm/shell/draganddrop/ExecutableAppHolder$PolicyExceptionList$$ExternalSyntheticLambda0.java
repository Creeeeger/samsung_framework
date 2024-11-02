package com.android.wm.shell.draganddrop;

import android.util.Base64;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ExecutableAppHolder$PolicyExceptionList$$ExternalSyntheticLambda0 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        String str = (String) obj;
        if (str == null) {
            return "";
        }
        return new String(Base64.decode(str, 2));
    }
}
