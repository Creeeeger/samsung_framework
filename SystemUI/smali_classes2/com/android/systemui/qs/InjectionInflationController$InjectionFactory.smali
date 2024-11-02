.class public final Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/InjectionInflationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/InjectionInflationController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/qs/InjectionInflationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/InjectionInflationController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;-><init>(Lcom/android/systemui/qs/InjectionInflationController;)V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const-string v0, "Could not inflate "

    .line 1
    iget-object v1, p0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/qs/InjectionInflationController;

    iget-object v1, v1, Lcom/android/systemui/qs/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/qs/InjectionInflationController;

    iget-object p0, p0, Lcom/android/systemui/qs/InjectionInflationController;->mViewInstanceCreatorFactory:Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;

    .line 3
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;->build(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p2, Landroid/view/InflateException;

    .line 6
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    .line 8
    new-instance p2, Landroid/view/InflateException;

    .line 9
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
