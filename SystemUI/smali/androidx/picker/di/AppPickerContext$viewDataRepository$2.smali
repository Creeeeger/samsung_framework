.class final Landroidx/picker/di/AppPickerContext$viewDataRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/di/AppPickerContext;-><init>(Landroid/content/Context;)V
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
.field final synthetic this$0:Landroidx/picker/di/AppPickerContext;


# direct methods
.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;->this$0:Landroidx/picker/di/AppPickerContext;

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
    .locals 2

    .line 1
    new-instance v0, Landroidx/picker/repository/ViewDataRepository;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;->this$0:Landroidx/picker/di/AppPickerContext;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/picker/di/AppPickerContext;->dataLoader$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/picker/loader/DataLoader;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;->this$0:Landroidx/picker/di/AppPickerContext;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/picker/loader/select/SelectStateLoader;

    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Landroidx/picker/repository/ViewDataRepository;-><init>(Landroidx/picker/loader/DataLoader;Landroidx/picker/loader/select/SelectStateLoader;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
