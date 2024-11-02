package com.android.systemui.user.domain.interactor;

import com.android.systemui.user.data.model.UserSwitcherSettingsModel;
import com.android.systemui.user.shared.model.UserActionModel;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$actions$1", f = "UserInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserInteractor$actions$1 extends SuspendLambda implements Function5 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ UserInteractor this$0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UserActionModel.values().length];
            try {
                iArr[UserActionModel.ENTER_GUEST_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UserActionModel.ADD_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UserActionModel.ADD_SUPERVISED_USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserInteractor$actions$1(UserInteractor userInteractor, Continuation<? super UserInteractor$actions$1> continuation) {
        super(5, continuation);
        this.this$0 = userInteractor;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        boolean booleanValue = ((Boolean) obj4).booleanValue();
        UserInteractor$actions$1 userInteractor$actions$1 = new UserInteractor$actions$1(this.this$0, (Continuation) obj5);
        userInteractor$actions$1.L$0 = (List) obj2;
        userInteractor$actions$1.L$1 = (UserSwitcherSettingsModel) obj3;
        userInteractor$actions$1.Z$0 = booleanValue;
        return userInteractor$actions$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x0188, code lost:
    
        if (r6 != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ce, code lost:
    
        if (r6 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0114, code lost:
    
        if (r6 == false) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a0  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor$actions$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
