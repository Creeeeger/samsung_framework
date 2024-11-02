.class final Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/view/warnings/WarningDialogController;-><init>(Lcom/android/systemui/volume/view/context/ViewContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/warnings/WarningDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/WarningDialogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;->this$0:Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;->this$0:Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/systemui/volume/view/context/ViewContext;->getVolDeps()Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 10
    .line 11
    check-cast p0, Lcom/android/systemui/volume/VolumeDependency;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 18
    .line 19
    return-object p0
.end method
