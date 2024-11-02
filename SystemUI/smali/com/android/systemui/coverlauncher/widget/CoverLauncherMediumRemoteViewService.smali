.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumRemoteViewService;
.super Landroid/widget/RemoteViewsService;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
