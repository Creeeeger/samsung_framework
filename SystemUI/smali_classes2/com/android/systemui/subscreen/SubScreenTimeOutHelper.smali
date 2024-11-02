.class public final Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

.field public contentResolver:Landroid/content/ContentResolver;

.field public final layoutParamsSupplier:Ljava/util/function/Supplier;

.field public final panelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public screenTimeOut:I

.field public final subScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

.field public final windowManagerSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Lcom/android/systemui/log/SecPanelLogger;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Lcom/android/systemui/log/SecPanelLogger;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->layoutParamsSupplier:Ljava/util/function/Supplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->panelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->subScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->windowManagerSupplier:Ljava/util/function/Supplier;

    .line 11
    .line 12
    const/16 p1, 0x2710

    .line 13
    .line 14
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    .line 15
    .line 16
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;-><init>(Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final readScreenTimeOut()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v0, "SubScreenTimeOutHelper"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "readScreenTimeOut: contentResolver is not initialized"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2710

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :cond_1
    const-string v1, "cover_screen_timeout"

    .line 20
    .line 21
    const/16 v2, 0xa

    .line 22
    .line 23
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    mul-int/lit16 p0, p0, 0x3e8

    .line 28
    .line 29
    const-string/jumbo v1, "readScreenTimeOut: "

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return p0
.end method
