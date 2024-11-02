.class public final Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

.field public final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->val$container:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->val$container:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;->this$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 11
    .line 12
    sget-object v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->CHIPS:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->updateChips()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
