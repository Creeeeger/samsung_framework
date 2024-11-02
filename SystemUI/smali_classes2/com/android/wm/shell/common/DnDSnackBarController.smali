.class public final Lcom/android/wm/shell/common/DnDSnackBarController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DnDSnackBarWindow$SnackBarCallbacks;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSnackBarPref:Landroid/content/SharedPreferences;

.field public mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

.field public mWasShownSnackBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x7d8

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string/jumbo v0, "snack_bar_pref_name"

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mSnackBarPref:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    const-string/jumbo v0, "snack_bar_shown"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mWasShownSnackBar:Z

    .line 31
    .line 32
    return-void
.end method
