.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
