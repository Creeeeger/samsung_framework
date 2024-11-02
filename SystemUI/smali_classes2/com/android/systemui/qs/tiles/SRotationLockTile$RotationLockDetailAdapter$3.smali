.class public final Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

.field public final synthetic val$allowed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->val$allowed:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->val$allowed:Z

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "call_auto_rotation"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "QPDE1012"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->val$allowed:Z

    .line 34
    .line 35
    const-string v2, "QPDS1012"

    .line 36
    .line 37
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SRotationLockTile;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, " callScreen is rotate allowed :"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SRotationLockTile$RotationLockDetailAdapter$3;->val$allowed:Z

    .line 57
    .line 58
    const-string v1, "SRotationLockTile"

    .line 59
    .line 60
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
