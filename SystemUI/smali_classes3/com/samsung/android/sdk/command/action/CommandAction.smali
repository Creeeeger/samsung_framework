.class public abstract Lcom/samsung/android/sdk/command/action/CommandAction;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction$1;


# instance fields
.field public mActionId:Ljava/lang/String;

.field public final mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

.field public final mTemplateId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandAction$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction$1;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandAction$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandAction$2;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_action_id"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    const-string v0, "key_template_id"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {v0}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    const-string v1, "command_param"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "commandParamBundle is empty"

    const-string v1, "CommandLib/CommandParam"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "dex_mode"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 11
    iput-boolean p1, v0, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    .line 12
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    .line 15
    new-instance p1, Lcom/samsung/android/sdk/command/action/CommandParam;

    invoke-direct {p1}, Lcom/samsung/android/sdk/command/action/CommandParam;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    return-void
.end method

.method public static createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/command/action/CommandAction;->ERROR_ACTION:Lcom/samsung/android/sdk/command/action/CommandAction$1;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v1, "key_action_type"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x62

    .line 14
    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const/16 v2, 0x63

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/command/action/ModeAction;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/ModeAction;-><init>(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_1
    new-instance v1, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/command/action/StringAction;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/StringAction;-><init>(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_3
    new-instance v1, Lcom/samsung/android/sdk/command/action/IntentAction;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/IntentAction;-><init>(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_4
    new-instance v1, Lcom/samsung/android/sdk/command/action/FloatAction;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_5
    new-instance v1, Lcom/samsung/android/sdk/command/action/BooleanAction;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/BooleanAction;-><init>(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/command/action/TriggerAction;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/TriggerAction;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/command/action/DefaultAction;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/action/DefaultAction;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :catch_0
    return-object v0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActionTemplateId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mTemplateId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract getActionType()I
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mActionId:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "key_action_id"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "key_action_type"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "key_template_id"

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionTemplateId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/command/action/CommandAction;->mCommandParam:Lcom/samsung/android/sdk/command/action/CommandParam;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/action/CommandParam;->mDexMode:Z

    .line 56
    .line 57
    const-string v2, "dex_mode"

    .line 58
    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string p0, "command_param"

    .line 63
    .line 64
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method
