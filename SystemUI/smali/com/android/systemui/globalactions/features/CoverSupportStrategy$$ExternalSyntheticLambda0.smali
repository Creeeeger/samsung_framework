.class public final synthetic Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

.field public final synthetic f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 19
    .line 20
    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
