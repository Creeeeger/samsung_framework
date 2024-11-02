package com.samsung.android.sume.core.graph;

import android.media.ExifInterface;
import android.media.MediaMetadataRetriever;
import android.media.tv.interactive.TvInteractiveAppService;
import android.util.Log;
import android.util.Pair;
import com.samsung.android.sume.core.Def;
import com.samsung.android.sume.core.buffer.MediaBuffer;
import com.samsung.android.sume.core.cache.DiskCache;
import com.samsung.android.sume.core.cache.KeyGenerator;
import com.samsung.android.sume.core.channel.BufferChannel;
import com.samsung.android.sume.core.channel.BufferChannelDescriptor;
import com.samsung.android.sume.core.channel.BufferSupplyChannel;
import com.samsung.android.sume.core.channel.SurfaceChannel;
import com.samsung.android.sume.core.evaluate.Evaluator;
import com.samsung.android.sume.core.filter.MediaFilter;
import com.samsung.android.sume.core.filter.collection.BufferedConveyorFilter$$ExternalSyntheticLambda1;
import com.samsung.android.sume.core.functional.BufferSupplier;
import com.samsung.android.sume.core.graph.Graph;
import com.samsung.android.sume.core.message.Event;
import com.samsung.android.sume.core.message.Message;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/* loaded from: classes4.dex */
public class MFGraph extends GraphBase<MediaFilter> {
    private static final String TAG = Def.tagOf((Class<?>) MFGraph.class);

    /* synthetic */ MFGraph(List x0, BufferChannel x1, BufferChannel x2, Graph.Option x3, AnonymousClass1 x4) {
        this(x0, x1, x2, x3);
    }

    private MFGraph(List<GraphNode<MediaFilter>> graphNodes, final BufferChannel inputChannel, final BufferChannel outputChannel, final Graph.Option option) {
        super(graphNodes, option);
        this.inputChannel = inputChannel;
        this.outputChannel = outputChannel;
        final List<GraphNode<MediaFilter>> inputNodes = new ArrayList<>();
        final List<GraphNode<MediaFilter>> outputNodes = new ArrayList<>();
        String str = TAG;
        Log.d(str, "prepare each node..." + graphNodes.size());
        graphNodes.forEach(new Consumer() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                MFGraph.this.m8795lambda$new$0$comsamsungandroidsumecoregraphMFGraph(inputChannel, inputNodes, outputChannel, outputNodes, option, (GraphNode) obj);
            }
        });
        Def.check(!inputNodes.isEmpty(), "no input node given", new Object[0]);
        Def.check(!outputNodes.isEmpty(), "no input node given", new Object[0]);
        Log.i(str, "success to create MediaFilter graph");
    }

    /* renamed from: lambda$new$0$com-samsung-android-sume-core-graph-MFGraph */
    public /* synthetic */ void m8795lambda$new$0$comsamsungandroidsumecoregraphMFGraph(BufferChannel inputChannel, List inputNodes, BufferChannel outputChannel, List outputNodes, Graph.Option option, GraphNode it) {
        if (!it.hasInputEdge()) {
            it.addInputEdge(new GraphEdge(inputChannel));
            inputNodes.add(it);
        }
        if (!it.hasOutputEdge()) {
            it.addOutputEdge(new GraphEdge(outputChannel));
            outputNodes.add(it);
        }
        if (it.getDescriptor().getOption().isAllowPartialConnection()) {
            it.addOutputEdge(new GraphEdge(outputChannel));
        }
        it.setMessagePublisher(this.messageChannelRouter.newMessagePublisher());
        it.prepare(option);
        this.messageChannelRouter.addMessageSubscriber(it);
    }

    @Override // com.samsung.android.sume.core.graph.Graph
    public void run(final List<MediaBuffer> inBuffers, final List<MediaBuffer> outBuffers) {
        String str = TAG;
        Log.d(str, "run E");
        if (this.option.getMaxDuration(TimeUnit.MICROSECONDS) != 0) {
            inBuffers.forEach(new Consumer() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    MFGraph.this.m8796lambda$run$1$comsamsungandroidsumecoregraphMFGraph((MediaBuffer) obj);
                }
            });
        }
        if (this.option.isCacheable()) {
            final DiskCache diskCache = (DiskCache) this.option.get(1);
            inBuffers.forEach(new Consumer() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    MFGraph.lambda$run$2(DiskCache.this, (MediaBuffer) obj);
                }
            });
            this.messagePublisher.sendMessage(Event.of(6, new HashMap<String, Object>(diskCache) { // from class: com.samsung.android.sume.core.graph.MFGraph.1
                final /* synthetic */ DiskCache val$diskCache;

                AnonymousClass1(final DiskCache diskCache2) {
                    this.val$diskCache = diskCache2;
                    boolean storeCache = MFGraph.this.option.contains(0);
                    put("cache", new Pair(diskCache2, Boolean.valueOf(storeCache)));
                }
            }));
        }
        if (this.option.isPackedIOBuffers()) {
            Def.require(inBuffers.size() == outBuffers.size());
            List<MediaBuffer> bufferList = (List) IntStream.range(0, outBuffers.size()).mapToObj(new IntFunction() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda3
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    return MFGraph.this.m8797lambda$run$3$comsamsungandroidsumecoregraphMFGraph(inBuffers, outBuffers, i);
                }
            }).collect(Collectors.toList());
            inBuffers.clear();
            outBuffers.clear();
            inBuffers.addAll(bufferList);
        } else if (inBuffers.size() == outBuffers.size()) {
            Stream<Integer> boxed = IntStream.range(0, outBuffers.size()).boxed();
            Function function = new Function() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return MFGraph.lambda$run$4(inBuffers, (Integer) obj);
                }
            };
            Objects.requireNonNull(outBuffers);
            Map<Integer, MediaBuffer> outBufferMap = (Map) boxed.collect(Collectors.toMap(function, new Function() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return (MediaBuffer) outBuffers.get(((Integer) obj).intValue());
                }
            }));
            this.outBufferMap.putAll(outBufferMap);
            outBufferMap.clear();
            outBuffers.clear();
        }
        if (this.option.isRunOneByOne()) {
            runOneByOne(inBuffers, outBuffers);
        } else {
            runBatch(inBuffers, outBuffers);
        }
        if (this.option.isRestoreMetadata()) {
            IntStream.range(0, inBuffers.size()).forEach(new IntConsumer() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda6
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    MFGraph.lambda$run$5(inBuffers, outBuffers, i);
                }
            });
        }
        Log.d(str, "run X");
    }

    /* renamed from: lambda$run$1$com-samsung-android-sume-core-graph-MFGraph */
    public /* synthetic */ void m8796lambda$run$1$comsamsungandroidsumecoregraphMFGraph(MediaBuffer it) {
        it.setExtra(Message.KEY_END_TIME_US, Long.valueOf(this.option.getMaxDuration(TimeUnit.MICROSECONDS)));
    }

    public static /* synthetic */ void lambda$run$2(DiskCache diskCache, MediaBuffer it) {
        try {
            if (it.containsExtra(Message.KEY_CACHE_ID)) {
                String key = KeyGenerator.getSimpleKey((String) it.getExtra(Message.KEY_CACHE_ID));
                File found = diskCache.get(key);
                if (found != null && found.exists()) {
                    MediaMetadataRetriever retriever = new MediaMetadataRetriever();
                    retriever.setDataSource(found.getAbsolutePath());
                    long duration = Long.parseLong(retriever.extractMetadata(9));
                    it.setExtra(Message.KEY_START_TIME_US, Long.valueOf(TimeUnit.MILLISECONDS.toMicros(duration)));
                    retriever.release();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: com.samsung.android.sume.core.graph.MFGraph$1 */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends HashMap<String, Object> {
        final /* synthetic */ DiskCache val$diskCache;

        AnonymousClass1(final DiskCache diskCache2) {
            this.val$diskCache = diskCache2;
            boolean storeCache = MFGraph.this.option.contains(0);
            put("cache", new Pair(diskCache2, Boolean.valueOf(storeCache)));
        }
    }

    /* renamed from: lambda$run$3$com-samsung-android-sume-core-graph-MFGraph */
    public /* synthetic */ MediaBuffer m8797lambda$run$3$comsamsungandroidsumecoregraphMFGraph(List inBuffers, List outBuffers, int it) {
        MediaBuffer inBuffer = (MediaBuffer) inBuffers.get(it);
        MediaBuffer outBuffer = (MediaBuffer) outBuffers.get(it);
        MediaBuffer buffer = MediaBuffer.groupOf(new ArrayList<MediaBuffer>(inBuffer, outBuffer) { // from class: com.samsung.android.sume.core.graph.MFGraph.2
            final /* synthetic */ MediaBuffer val$inBuffer;
            final /* synthetic */ MediaBuffer val$outBuffer;

            AnonymousClass2(MediaBuffer inBuffer2, MediaBuffer outBuffer2) {
                this.val$inBuffer = inBuffer2;
                this.val$outBuffer = outBuffer2;
                add(inBuffer2);
                add(outBuffer2);
            }
        });
        if (inBuffer2.containsExtra(Message.KEY_CONTENTS_ID)) {
            buffer.setExtra(Message.KEY_CONTENTS_ID, inBuffer2.getExtra(Message.KEY_CONTENTS_ID));
        }
        if (inBuffer2.containsExtra(Message.KEY_IN_FILE)) {
            buffer.setExtra(Message.KEY_IN_FILE, inBuffer2.getExtra(Message.KEY_IN_FILE));
        }
        if (outBuffer2.containsExtra(Message.KEY_OUT_FILE)) {
            buffer.setExtra(Message.KEY_OUT_FILE, outBuffer2.getExtra(Message.KEY_OUT_FILE));
        }
        buffer.setFlags(1);
        return buffer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.samsung.android.sume.core.graph.MFGraph$2 */
    /* loaded from: classes4.dex */
    public class AnonymousClass2 extends ArrayList<MediaBuffer> {
        final /* synthetic */ MediaBuffer val$inBuffer;
        final /* synthetic */ MediaBuffer val$outBuffer;

        AnonymousClass2(MediaBuffer inBuffer2, MediaBuffer outBuffer2) {
            this.val$inBuffer = inBuffer2;
            this.val$outBuffer = outBuffer2;
            add(inBuffer2);
            add(outBuffer2);
        }
    }

    public static /* synthetic */ Integer lambda$run$4(List inBuffers, Integer it) {
        return (Integer) ((MediaBuffer) inBuffers.get(it.intValue())).getExtra(Message.KEY_CONTENTS_ID);
    }

    public static /* synthetic */ void lambda$run$5(List inBuffers, List outBuffers, int index) {
        ExifInterface exif = (ExifInterface) ((MediaBuffer) inBuffers.get(index)).getExtra("exif");
        if (exif != null) {
            ((MediaBuffer) outBuffers.get(index)).setExtra("exif", exif);
        }
    }

    @Override // com.samsung.android.sume.core.graph.Graph
    public void pause() {
        Log.d(TAG, TvInteractiveAppService.TIME_SHIFT_COMMAND_TYPE_PAUSE);
        this.nodes.forEach(new Consumer() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((GraphNode) obj).pause();
            }
        });
    }

    @Override // com.samsung.android.sume.core.graph.Graph
    public void resume() {
        Log.d(TAG, "resume");
        this.nodes.forEach(new Consumer() { // from class: com.samsung.android.sume.core.graph.MFGraph$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((GraphNode) obj).resume();
            }
        });
    }

    /* loaded from: classes4.dex */
    public static class Builder extends GraphBuilderBase<MediaFilter> {
        private final Supplier<BufferChannel> bufferChannelSupplier;
        private final Graph.Option option;

        public Builder() {
            this(new Graph.Option());
        }

        public Builder(Graph.Option option) {
            this.bufferChannelSupplier = new BufferedConveyorFilter$$ExternalSyntheticLambda1();
            this.option = option;
        }

        public Builder(MFGraphUnitFactory mfGraphUnitFactory) {
            this(mfGraphUnitFactory, new Graph.Option());
        }

        public Builder(MFGraphUnitFactory mfGraphUnitFactory, Graph.Option option) {
            Objects.requireNonNull(mfGraphUnitFactory);
            this.bufferChannelSupplier = new MFGraph$Builder$$ExternalSyntheticLambda0(mfGraphUnitFactory);
            this.option = option;
            if (option.isCacheable() && option.get(1) == null) {
                option.set(1, mfGraphUnitFactory.newDiskCache());
            }
        }

        @Override // com.samsung.android.sume.core.graph.GraphBuilder
        public GraphBuilder<MediaFilter> addNode(GraphNode<? extends MediaFilter> from, GraphNode<? extends MediaFilter> to) {
            GraphEdge edge = new GraphEdge(this.bufferChannelSupplier.get());
            from.addOutputEdge(edge);
            to.addInputEdge(edge);
            this.graphNodes.add(from);
            this.graphNodes.add(to);
            return this;
        }

        @Override // com.samsung.android.sume.core.graph.GraphBuilder
        public GraphBuilder<MediaFilter> addNode(GraphNode<? extends MediaFilter> from, GraphNode<? extends MediaFilter> to, Evaluator evaluator) {
            return addNode(from, to, evaluator, new BufferChannelDescriptor());
        }

        @Override // com.samsung.android.sume.core.graph.GraphBuilder
        public GraphBuilder<MediaFilter> addNode(GraphNode<? extends MediaFilter> from, GraphNode<? extends MediaFilter> to, BufferChannelDescriptor channelDescriptor) {
            return addNode(from, to, null, channelDescriptor);
        }

        @Override // com.samsung.android.sume.core.graph.GraphBuilder
        public GraphBuilder<MediaFilter> addNode(GraphNode<? extends MediaFilter> from, GraphNode<? extends MediaFilter> to, Evaluator evaluator, BufferChannelDescriptor channelDescriptor) {
            BufferChannel channel;
            switch (channelDescriptor.getType()) {
                case 0:
                    channel = this.bufferChannelSupplier.get();
                    break;
                case 1:
                    channel = new BufferSupplyChannel(this.bufferChannelSupplier.get());
                    MediaFilter mediaFilter = to.get();
                    Def.require(mediaFilter instanceof BufferSupplier);
                    ((BufferSupplyChannel) channel).configure(((BufferSupplier) mediaFilter).getBufferSupplier());
                    break;
                case 2:
                case 3:
                case 4:
                    channel = SurfaceChannel.of(channelDescriptor.getType(), this.bufferChannelSupplier.get());
                    break;
                default:
                    throw new IllegalArgumentException("unknown BufferChannel.Type given: " + channelDescriptor);
            }
            if (channelDescriptor.getCapacity() != 0) {
                channel.setCapacity(channelDescriptor.getCapacity());
            }
            GraphEdge edge = new GraphEdge(channel, evaluator);
            edge.setNode(from.getNodeId(), to.getNodeId());
            from.addOutputEdge(edge);
            to.addInputEdge(edge);
            this.graphNodes.add(from);
            this.graphNodes.add(to);
            return this;
        }

        @Override // com.samsung.android.sume.core.graph.GraphBuilder
        public Graph<MediaFilter> build() {
            BufferChannel inputChannel = this.bufferChannelSupplier.get();
            BufferChannel outputChannel = this.bufferChannelSupplier.get();
            this.graphNodes = (List) this.graphNodes.stream().distinct().collect(Collectors.toList());
            return new MFGraph(this.graphNodes, inputChannel, outputChannel, this.option);
        }
    }
}
