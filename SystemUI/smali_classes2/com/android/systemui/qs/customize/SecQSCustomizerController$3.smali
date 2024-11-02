.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentOrientation:I

    .line 4
    .line 5
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->close()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setupPager()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->updateResources()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setUpPageArea()V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentOrientation:I

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
