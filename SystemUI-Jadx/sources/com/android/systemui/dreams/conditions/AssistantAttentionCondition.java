package com.android.systemui.dreams.conditions;

import com.android.internal.app.AssistUtils;
import com.android.internal.app.IVisualQueryDetectionAttentionListener;
import com.android.systemui.dreams.DreamOverlayStateController;
import com.android.systemui.shared.condition.Condition;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AssistantAttentionCondition extends Condition {
    public final AssistUtils mAssistUtils;
    public final AnonymousClass2 mCallback;
    public final DreamOverlayStateController mDreamOverlayStateController;
    public boolean mEnabled;
    public final AnonymousClass1 mVisualQueryDetectionAttentionListener;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.dreams.conditions.AssistantAttentionCondition$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.dreams.conditions.AssistantAttentionCondition$2] */
    public AssistantAttentionCondition(CoroutineScope coroutineScope, DreamOverlayStateController dreamOverlayStateController, AssistUtils assistUtils) {
        super(coroutineScope);
        this.mVisualQueryDetectionAttentionListener = new IVisualQueryDetectionAttentionListener.Stub() { // from class: com.android.systemui.dreams.conditions.AssistantAttentionCondition.1
            public final void onAttentionGained() {
                AssistantAttentionCondition.this.updateCondition(true);
            }

            public final void onAttentionLost() {
                AssistantAttentionCondition.this.updateCondition(false);
            }
        };
        this.mCallback = new DreamOverlayStateController.Callback() { // from class: com.android.systemui.dreams.conditions.AssistantAttentionCondition.2
            @Override // com.android.systemui.dreams.DreamOverlayStateController.Callback
            public final void onStateChanged() {
                AssistantAttentionCondition assistantAttentionCondition = AssistantAttentionCondition.this;
                boolean containsState = assistantAttentionCondition.mDreamOverlayStateController.containsState(32);
                AssistUtils assistUtils2 = assistantAttentionCondition.mAssistUtils;
                if (containsState) {
                    if (!assistantAttentionCondition.mEnabled) {
                        assistantAttentionCondition.mEnabled = true;
                        assistUtils2.enableVisualQueryDetection(assistantAttentionCondition.mVisualQueryDetectionAttentionListener);
                        return;
                    }
                    return;
                }
                if (assistantAttentionCondition.mEnabled) {
                    assistantAttentionCondition.mEnabled = false;
                    assistUtils2.disableVisualQueryDetection();
                    assistantAttentionCondition.updateCondition(false);
                }
            }
        };
        this.mDreamOverlayStateController = dreamOverlayStateController;
        this.mAssistUtils = assistUtils;
    }

    @Override // com.android.systemui.shared.condition.Condition
    public final void start() {
        this.mDreamOverlayStateController.addCallback((DreamOverlayStateController.Callback) this.mCallback);
    }

    @Override // com.android.systemui.shared.condition.Condition
    public final void stop() {
        if (this.mEnabled) {
            this.mEnabled = false;
            this.mAssistUtils.disableVisualQueryDetection();
            updateCondition(false);
        }
        this.mDreamOverlayStateController.removeCallback((DreamOverlayStateController.Callback) this.mCallback);
    }
}
