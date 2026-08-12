import 'package:flutter/material.dart';

class DemoSingleChildScrollView extends StatefulWidget {
  const DemoSingleChildScrollView({super.key});

  @override
  State<DemoSingleChildScrollView> createState() =>
      _DemoSingleChildScrollViewState();
}

class _DemoSingleChildScrollViewState extends State<DemoSingleChildScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single child scroll view.')),
      body: SingleChildScrollView(
        child: Text("""
  Neural machine translation is a newly emerging approach to machine translation, recently proposed
by Kalchbrenner and Blunsom (2013), Sutskever et al. (2014) and Cho et al. (2014b). Unlike the
traditional phrase-based translation system (see, e.g., Koehn et al., 2003) which consists of many
small sub-components that are tuned separately, neural machine translation attempts to build and
train a single, large neural network that reads a sentence and outputs a correct translation.
Most of the proposed neural machine translation models belong to a family of encoder–
decoders (Sutskever et al., 2014; Cho et al., 2014a), with an encoder and a decoder for each language, or involve a language-specific encoder applied to each sentence whose outputs are then compared (Hermann and Blunsom, 2014). An encoder neural network reads and encodes a source sentence into a fixed-length vector. A decoder then outputs a translation from the encoded vector. The
whole encoder–decoder system, which consists of the encoder and the decoder for a language pair,
is jointly trained to maximize the probability of a correct translation given a source sentence.
A potential issue with this encoder–decoder approach is that a neural network needs to be able to
compress all the necessary information of a source sentence into a fixed-length vector. This may
make it difficult for the neural network to cope with long sentences, especially those that are longer
than the sentences in the training corpus. Cho et al. (2014b) showed that indeed the performance of
a basic encoder–decoder deteriorates rapidly as the length of an input sentence increases.
In order to address this issue, we introduce an extension to the encoder–decoder model which learns
to align and translate jointly. Each time the proposed model generates a word in a translation, it
(soft-)searches for a set of positions in a source sentence where the most relevant information is
concentrated. The model then predicts a target word based on the context vectors associated with
these source positions and all the previous generated target words.
Neural machine translation is a newly emerging approach to machine translation, recently proposed
by Kalchbrenner and Blunsom (2013), Sutskever et al. (2014) and Cho et al. (2014b). Unlike the
traditional phrase-based translation system (see, e.g., Koehn et al., 2003) which consists of many
small sub-components that are tuned separately, neural machine translation attempts to build and
train a single, large neural network that reads a sentence and outputs a correct translation.
Most of the proposed neural machine translation models belong to a family of encoder–
decoders (Sutskever et al., 2014; Cho et al., 2014a), with an encoder and a decoder for each language, or involve a language-specific encoder applied to each sentence whose outputs are then compared (Hermann and Blunsom, 2014). An encoder neural network reads and encodes a source sentence into a fixed-length vector. A decoder then outputs a translation from the encoded vector. The
whole encoder–decoder system, which consists of the encoder and the decoder for a language pair,
is jointly trained to maximize the probability of a correct translation given a source sentence.
A potential issue with this encoder–decoder approach is that a neural network needs to be able to
compress all the necessary information of a source sentence into a fixed-length vector. This may
make it difficult for the neural network to cope with long sentences, especially those that are longer
than the sentences in the training corpus. Cho et al. (2014b) showed that indeed the performance of
a basic encoder–decoder deteriorates rapidly as the length of an input sentence increases.
In order to address this issue, we introduce an extension to the encoder–decoder model which learns
to align and translate jointly. Each time the proposed model generates a word in a translation, it
(soft-)searches for a set of positions in a source sentence where the most relevant information is
concentrated. The model then predicts a target word based on the context vectors associated with
these source positions and all the previous generated target words
"""),
      ),
    );
  }
}
