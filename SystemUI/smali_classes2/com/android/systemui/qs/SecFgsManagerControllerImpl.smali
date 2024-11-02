.class public final Lcom/android/systemui/qs/SecFgsManagerControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final dialogConsumer:Ljava/util/function/Consumer;

.field public final dialogSupplier:Ljava/util/function/Supplier;

.field public noItemTextView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Supplier;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->dialogConsumer:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->dialogSupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "SecFgsManagerController"

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
