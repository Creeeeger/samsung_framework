.class public final Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public callback:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;

.field public final displayReadyRunnable:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;-><init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->displayReadyRunnable:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

    .line 12
    .line 13
    return-void
.end method
