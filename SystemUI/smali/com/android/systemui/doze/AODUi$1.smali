.class public final Lcom/android/systemui/doze/AODUi$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/AODUi;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/AODUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlwaysOnSuppressedChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/AODUi$1;->this$0:Lcom/android/systemui/doze/AODUi;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/doze/AODUi;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
