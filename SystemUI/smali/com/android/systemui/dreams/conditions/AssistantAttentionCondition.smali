.class public final Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public mEnabled:Z

.field public final mVisualQueryDetectionAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/internal/app/AssistUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;-><init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mVisualQueryDetectionAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    .line 10
    .line 11
    new-instance p1, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;-><init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mEnabled:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/internal/app/AssistUtils;->disableVisualQueryDetection()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mCallback:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$2;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
