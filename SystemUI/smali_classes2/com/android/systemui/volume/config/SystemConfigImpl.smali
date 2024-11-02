.class public final Lcom/android/systemui/volume/config/SystemConfigImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final hasCutout$delegate:Lkotlin/Lazy;

.field public final isTablet$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p1, Lcom/android/systemui/volume/config/SystemConfigImpl$isTablet$2;->INSTANCE:Lcom/android/systemui/volume/config/SystemConfigImpl$isTablet$2;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    new-instance p1, Lcom/android/systemui/volume/config/SystemConfigImpl$hasCutout$2;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/config/SystemConfigImpl$hasCutout$2;-><init>(Lcom/android/systemui/volume/config/SystemConfigImpl;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->hasCutout$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getHasCutout()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->hasCutout$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isTablet()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
