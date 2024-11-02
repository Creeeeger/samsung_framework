.class public final Lcom/android/wm/shell/draganddrop/AppInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsDropResolver:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIsDropResolver:Z

    .line 9
    .line 10
    return-void
.end method
