.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "KeyguardEditModeAnimatorController"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onSecPanelExpansionStateChanged(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startCancelAnimation()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
