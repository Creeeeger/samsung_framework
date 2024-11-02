package kotlinx.coroutines;

import kotlin.Result;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class CompletionStateKt {
    public static final Object recoverResult(Object obj) {
        if (obj instanceof CompletedExceptionally) {
            int i = Result.$r8$clinit;
            return new Result.Failure(((CompletedExceptionally) obj).cause);
        }
        int i2 = Result.$r8$clinit;
        return obj;
    }
}
