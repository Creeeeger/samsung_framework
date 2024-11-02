.class public final Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# instance fields
.field public final mOverrideActivityOptions:Landroid/os/Bundle;

.field public final mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mUserHandle:Landroid/os/UserHandle;

    .line 9
    .line 10
    return-void
.end method

.method public static create(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;-><init>(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getAllSourceIntents()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDisplayLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getExtendedInfo()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getResolvedComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getResolvedIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isPinned()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSuspended()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 14
    .line 15
    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/chooser/TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->setSkipFixUris(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 20
    .line 21
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-interface {p3, v0}, Lcom/android/internal/app/chooser/TargetInfo;->setSkipFixUris(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mUserHandle:Landroid/os/UserHandle;

    .line 22
    .line 23
    invoke-interface {p3, p1, p2, p0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
