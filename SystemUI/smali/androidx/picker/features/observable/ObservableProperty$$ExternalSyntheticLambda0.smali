.class public final synthetic Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/picker/features/observable/ObservableProperty;

.field public final synthetic f$1:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/Function;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/features/observable/ObservableProperty;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;->f$1:Lkotlin/Function;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/features/observable/ObservableProperty;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda0;->f$1:Lkotlin/Function;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroidx/picker/features/observable/ObservableProperty;->$r8$lambda$nhB4xv4-hh-Re24EAG1_PH2Ur9M(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroidx/picker/features/observable/ObservableProperty;->$r8$lambda$7dofohOnVs69UusiriMchHnjJxA(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroidx/picker/features/observable/ObservableProperty;->$r8$lambda$25KHQfzRvpJOX5qa7r8uBNEOxBY(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
