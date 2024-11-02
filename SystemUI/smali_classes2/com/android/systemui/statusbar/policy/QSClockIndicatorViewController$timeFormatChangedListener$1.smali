.class public final Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;

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
    const-string p1, "QSClockIndicatorView"

    .line 2
    .line 3
    const-string v0, "12-24 format changed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->qsClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
