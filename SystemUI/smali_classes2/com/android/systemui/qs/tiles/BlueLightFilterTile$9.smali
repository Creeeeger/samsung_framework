.class public final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

.field public final synthetic val$fromMenu:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->val$fromMenu:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "location_mode"

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    iget p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->val$fromMenu:I

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-ne p1, p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setScheduledBluelight(I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveBluelight(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method
