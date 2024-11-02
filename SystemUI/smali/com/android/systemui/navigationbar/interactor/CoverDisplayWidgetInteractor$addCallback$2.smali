.class public final Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->displayReadyRunnable:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;->run()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
