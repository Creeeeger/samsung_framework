.class public final Lcom/samsung/android/sdk/command/action/TriggerAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

.field public final mTriggerState:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_trigger_state"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    const-string v0, "key_target_command_action"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    :cond_0
    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/sdk/command/action/CommandAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    return-void
.end method


# virtual methods
.method public final getActionTemplateId()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getActionType()I
    .locals 0

    .line 1
    const/16 p0, 0x63

    .line 2
    .line 3
    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_trigger_state"

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTriggerState:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/TriggerAction;->mTargetCommandAction:Lcom/samsung/android/sdk/command/action/CommandAction;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-string v1, "key_target_command_action"

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v0
.end method
