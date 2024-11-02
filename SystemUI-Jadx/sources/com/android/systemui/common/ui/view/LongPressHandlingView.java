package com.android.systemui.common.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.systemui.common.ui.view.LongPressHandlingViewInteractionHandler;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LongPressHandlingView extends View {
    public final Lazy interactionHandler$delegate;

    public LongPressHandlingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.interactionHandler$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.common.ui.view.LongPressHandlingView$interactionHandler$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.common.ui.view.LongPressHandlingView$interactionHandler$2$2, reason: invalid class name */
            /* loaded from: classes.dex */
            final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function0 {
                public AnonymousClass2(Object obj) {
                    super(0, obj, LongPressHandlingView.class, "isAttachedToWindow", "isAttachedToWindow()Z", 0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(((LongPressHandlingView) this.receiver).isAttachedToWindow());
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                final LongPressHandlingView longPressHandlingView = LongPressHandlingView.this;
                Function2 function2 = new Function2() { // from class: com.android.systemui.common.ui.view.LongPressHandlingView$interactionHandler$2.1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        long longValue = ((Number) obj2).longValue();
                        final Object obj3 = new Object();
                        LongPressHandlingView.this.getHandler().postDelayed((Runnable) obj, obj3, longValue);
                        final LongPressHandlingView longPressHandlingView2 = LongPressHandlingView.this;
                        return new DisposableHandle() { // from class: com.android.systemui.common.ui.view.LongPressHandlingView.interactionHandler.2.1.1
                            @Override // kotlinx.coroutines.DisposableHandle
                            public final void dispose() {
                                LongPressHandlingView.this.getHandler().removeCallbacksAndMessages(obj3);
                            }
                        };
                    }
                };
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(LongPressHandlingView.this);
                final LongPressHandlingView longPressHandlingView2 = LongPressHandlingView.this;
                Function2 function22 = new Function2() { // from class: com.android.systemui.common.ui.view.LongPressHandlingView$interactionHandler$2.3
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj).intValue();
                        ((Number) obj2).intValue();
                        LongPressHandlingView.this.getClass();
                        return Unit.INSTANCE;
                    }
                };
                final LongPressHandlingView longPressHandlingView3 = LongPressHandlingView.this;
                return new LongPressHandlingViewInteractionHandler(function2, anonymousClass2, function22, new Function0() { // from class: com.android.systemui.common.ui.view.LongPressHandlingView$interactionHandler$2.4
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        LongPressHandlingView.this.getClass();
                        return Unit.INSTANCE;
                    }
                });
            }
        });
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        LongPressHandlingViewInteractionHandler longPressHandlingViewInteractionHandler = (LongPressHandlingViewInteractionHandler) this.interactionHandler$delegate.getValue();
        if (motionEvent != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            int i = LongPressHandlingViewInteractionHandler.MotionEventModel.Other.$r8$clinit;
                        } else {
                            int i2 = LongPressHandlingViewInteractionHandler.MotionEventModel.Cancel.$r8$clinit;
                        }
                    } else {
                        new LongPressHandlingViewInteractionHandler.MotionEventModel.Move(LongPressHandlingViewKt.distanceMoved(motionEvent));
                    }
                } else {
                    new LongPressHandlingViewInteractionHandler.MotionEventModel.Up(LongPressHandlingViewKt.distanceMoved(motionEvent), motionEvent.getEventTime() - motionEvent.getDownTime());
                }
            } else {
                new LongPressHandlingViewInteractionHandler.MotionEventModel.Down((int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
        longPressHandlingViewInteractionHandler.getClass();
        return false;
    }
}
