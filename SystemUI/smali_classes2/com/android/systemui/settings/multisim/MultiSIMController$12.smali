.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$12;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$12;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "MultiSIMController"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x3e9

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const-string p0, "UIHandler MESSAGE_EMPTY"

    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "MESSAGE_UPDATE_SET_NETMODE_DELAY_STATE"

    .line 21
    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$12;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string p1, "MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON"

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$12;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 47
    .line 48
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method
