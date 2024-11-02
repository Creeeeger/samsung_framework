.class public final Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallAttributesListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method


# virtual methods
.method public final onCallStatesChanged(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onCallStatesChanged: CallStateList = "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string/jumbo v2, "video"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 42
    .line 43
    const-string/jumbo v3, "volte"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 55
    .line 56
    const-string v3, "epdg"

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 68
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "onCallAttributesChanged state changed : "

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " isVOLteCall : "

    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 100
    .line 101
    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " isVolteVideoCall : "

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 112
    .line 113
    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    .line 114
    .line 115
    invoke-static {v1, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 6
    .line 7
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "service state changed : "

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ",isRoaming = "

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
