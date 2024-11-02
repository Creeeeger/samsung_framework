package com.android.systemui.shade;

import android.view.MotionEvent;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQsMediaTouchHelper$onTouch$2 extends FunctionReferenceImpl implements Function3 {
    public SecQsMediaTouchHelper$onTouch$2(Object obj) {
        super(3, obj, SecPanelLogger.class, "addNpvcOnTouchLog", "addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj3).booleanValue();
        ((SecPanelLoggerImpl) ((SecPanelLogger) this.receiver)).addNpvcOnTouchLog((MotionEvent) obj, (String) obj2, booleanValue);
        return Unit.INSTANCE;
    }
}
