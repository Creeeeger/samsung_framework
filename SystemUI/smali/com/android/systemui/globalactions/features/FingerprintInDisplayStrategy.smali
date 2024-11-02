.class public final Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;


# instance fields
.field public final mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDispose()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
