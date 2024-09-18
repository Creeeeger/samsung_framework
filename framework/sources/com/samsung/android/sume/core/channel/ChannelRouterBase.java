package com.samsung.android.sume.core.channel;

import com.samsung.android.sume.core.Def;
import com.samsung.android.sume.core.evaluate.EvalNone;
import com.samsung.android.sume.core.evaluate.Evaluator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes4.dex */
abstract class ChannelRouterBase extends BufferChannelGroupBase {
    protected Map<Evaluator, BufferChannel> evChannelMap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelRouterBase(Map<Evaluator, BufferChannel> evChannelMap) {
        Def.check(!evChannelMap.isEmpty(), "no edge given", new Object[0]);
        Map<Boolean, List<Map.Entry<Evaluator, BufferChannel>>> partitions = (Map) evChannelMap.entrySet().stream().collect(Collectors.partitioningBy(new Predicate() { // from class: com.samsung.android.sume.core.channel.ChannelRouterBase$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ChannelRouterBase.lambda$new$0((Map.Entry) obj);
            }
        }));
        this.channels = (List) Optional.ofNullable(partitions.get(true)).map(new Function() { // from class: com.samsung.android.sume.core.channel.ChannelRouterBase$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ChannelRouterBase.lambda$new$1((List) obj);
            }
        }).orElseGet(new ChannelRouterBase$$ExternalSyntheticLambda6());
        this.evChannelMap = (Map) Optional.ofNullable(partitions.get(false)).map(new Function() { // from class: com.samsung.android.sume.core.channel.ChannelRouterBase$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ChannelRouterBase.lambda$new$3((List) obj);
            }
        }).orElseGet(new ChannelRouterBase$$ExternalSyntheticLambda3());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$new$0(Map.Entry e) {
        return e.getKey() == null || (e.getKey() instanceof EvalNone);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List lambda$new$1(List e) {
        return (List) e.stream().map(new ChannelRouterBase$$ExternalSyntheticLambda1()).collect(Collectors.toList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ LinkedHashMap lambda$new$3(List e) {
        return (LinkedHashMap) e.stream().sorted(Map.Entry.comparingByKey()).collect(Collectors.toMap(new Function() { // from class: com.samsung.android.sume.core.channel.ChannelRouterBase$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (Evaluator) ((Map.Entry) obj).getKey();
            }
        }, new ChannelRouterBase$$ExternalSyntheticLambda1(), new BinaryOperator() { // from class: com.samsung.android.sume.core.channel.ChannelRouterBase$$ExternalSyntheticLambda2
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ChannelRouterBase.lambda$new$2((BufferChannel) obj, (BufferChannel) obj2);
            }
        }, new ChannelRouterBase$$ExternalSyntheticLambda3()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ BufferChannel lambda$new$2(BufferChannel oldValue, BufferChannel newValue) {
        return oldValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelRouterBase(List<BufferChannel> channels) {
        this.channels = channels;
    }
}
