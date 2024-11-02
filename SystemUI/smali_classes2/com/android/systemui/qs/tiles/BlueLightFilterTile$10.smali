.class public final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->val$fromMenu:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->val$fromMenu:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper;->setScheduledBluelight(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveBluelight(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method
