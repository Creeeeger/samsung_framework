.class public final Lcom/android/systemui/qs/tiles/DndTile$2;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/DndTile;->mSettingZenDuration:Lcom/android/systemui/qs/tiles/DndTile$1;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const-string v0, "ZEN_MODE: onChange = "

    .line 13
    .line 14
    const-string v1, ",currentZen = "

    .line 15
    .line 16
    const-string v2, ",previousZen = "

    .line 17
    .line 18
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 23
    .line 24
    iget v0, v0, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    .line 25
    .line 26
    const-string v1, "DndTile"

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 32
    .line 33
    iget v0, p1, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    .line 34
    .line 35
    const/4 v1, -0x2

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    iget-boolean v1, p1, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-nez v1, :cond_2

    .line 44
    .line 45
    if-eq v0, p2, :cond_2

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 54
    .line 55
    iget p2, p2, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    .line 56
    .line 57
    const-string/jumbo v0, "zen_duration"

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    iput p2, p1, Lcom/android/systemui/qs/tiles/DndTile;->mPreviousSetZenDuration:I

    .line 65
    .line 66
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    .line 70
    .line 71
    return-void
.end method
