.class public final Landroidx/picker/di/AppPickerContext;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

.field public final appDataRepository$delegate:Lkotlin/Lazy;

.field public final dataLoader$delegate:Lkotlin/Lazy;

.field public final packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

.field public final selectStateLoader$delegate:Lkotlin/Lazy;

.field public final viewDataRepository$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/picker/helper/PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/picker/di/AppPickerContext;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 10
    .line 11
    sget-object v0, Landroidx/picker/features/scs/AbstractAppDataListFactory;->EMPTY_FACTORY:Landroidx/picker/features/scs/AbstractAppDataListFactory$1;

    .line 12
    .line 13
    new-instance v0, Landroidx/picker/features/scs/AppDataListSCSFactory;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/picker/features/scs/AppDataListSCSFactory;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/picker/di/AppPickerContext;->appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

    .line 19
    .line 20
    new-instance p1, Landroidx/picker/di/AppPickerContext$dataLoader$2;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Landroidx/picker/di/AppPickerContext$dataLoader$2;-><init>(Landroidx/picker/di/AppPickerContext;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->dataLoader$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    sget-object p1, Landroidx/picker/di/AppPickerContext$selectStateLoader$2;->INSTANCE:Landroidx/picker/di/AppPickerContext$selectStateLoader$2;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance p1, Landroidx/picker/di/AppPickerContext$appDataRepository$2;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Landroidx/picker/di/AppPickerContext$appDataRepository$2;-><init>(Landroidx/picker/di/AppPickerContext;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->appDataRepository$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance p1, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;-><init>(Landroidx/picker/di/AppPickerContext;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    .line 60
    .line 61
    return-void
.end method
