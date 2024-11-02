.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/ContextWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field mBase:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ContextWrapper;->mBase:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ContextWrapper;->mBase:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
